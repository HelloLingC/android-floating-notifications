package com.lingc.notification.ui.fragment;

import android.content.Intent;
import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;

import com.lingc.notification.R;
import com.lingc.notification.overlay.FloatingNotificationController;
import com.lingc.notification.overlay.OverlayPayload;
import com.lingc.notification.overlay.TileNotificationController;
import com.lingc.notification.ui.activities.EditPosActivity;
import com.lingc.notification.ui.activities.KeyPreventActivity;
import com.lingc.notification.ui.activities.ManagerActivity;
import com.lingc.notification.ui.activities.SplashActivity;
import com.lingc.notification.ui.activities.WhiteListActivity;
import com.lingc.notification.util.Settings;

public class MainSettingsFragment extends PreferenceFragmentCompat {
    public interface Navigator { void open(Fragment fragment, String title); }

    @Override public void onCreatePreferences(Bundle state, String rootKey) {
        getPreferenceManager().setSharedPreferencesName("mainSettings");
        setPreferencesFromResource(R.xml.pref_main_lay, rootKey);
        Preference beta = findPreference("betaFuncCategory");
        if (beta != null) beta.setEnabled(Settings.main(requireContext()).getBoolean("isBetaFuncOpen", false));
        click("globalSettings", () -> navigate(new GlobalSettingsFragment(), R.string.perf_main_global_title));
        click("floatingSettings", () -> navigate(new FloatingSettingsFragment(), R.string.perf_main_floating_title));
        click("tileSettings", () -> navigate(new TileSettingsFragment(), R.string.perf_main_tile_title));
        click("sendFloatingTest", () -> FloatingNotificationController.show(requireContext(), testPayload()));
        click("sendTileTest", () -> TileNotificationController.show(requireContext(), testPayload()));
    }

    private OverlayPayload testPayload() {
        return new OverlayPayload(requireContext().getPackageName(), "测试通知", "这是一条恢复工程的测试通知",
                null, requireContext().getApplicationInfo().loadIcon(requireContext().getPackageManager()), null);
    }

    private void navigate(Fragment fragment, int title) {
        if (requireActivity() instanceof Navigator) ((Navigator) requireActivity()).open(fragment, getString(title));
    }

    private void click(String key, Runnable action) {
        Preference preference = findPreference(key);
        if (preference != null) preference.setOnPreferenceClickListener(item -> { action.run(); return true; });
    }
}
