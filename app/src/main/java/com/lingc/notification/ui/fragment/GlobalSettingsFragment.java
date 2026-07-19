package com.lingc.notification.ui.fragment;

import android.content.Intent;
import android.os.Bundle;

import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;

import com.lingc.notification.R;
import com.lingc.notification.ui.activities.EditPosActivity;
import com.lingc.notification.ui.activities.KeyPreventActivity;
import com.lingc.notification.ui.activities.ManagerActivity;
import com.lingc.notification.ui.activities.SplashActivity;
import com.lingc.notification.ui.activities.WhiteListActivity;

public class GlobalSettingsFragment extends PreferenceFragmentCompat {
    @Override public void onCreatePreferences(Bundle state, String rootKey) {
        getPreferenceManager().setSharedPreferencesName("globalSettings");
        setPreferencesFromResource(R.xml.pref_global_lay, rootKey);
        ListPreference style = findPreference("notificatStyle");
        if (style != null) {
            enableCustomColors("asswecan".equals(style.getValue()));
            style.setOnPreferenceChangeListener((p, value) -> { enableCustomColors("asswecan".equals(value)); return true; });
        }
        activity("permissionSplash", SplashActivity.class);
        activity("keyPrevent", KeyPreventActivity.class);
        activity("notifitWhiteList", WhiteListActivity.class);
        activity("notifitManager", ManagerActivity.class);
        activity("notificatEditPos", EditPosActivity.class);
    }

    private void enableCustomColors(boolean enabled) {
        for (String key : new String[]{"backgroundColor", "titleColor", "messageColor"}) {
            Preference p = findPreference(key); if (p != null) p.setEnabled(enabled);
        }
    }

    private void activity(String key, Class<?> type) {
        Preference p = findPreference(key);
        if (p != null) p.setOnPreferenceClickListener(item -> { startActivity(new Intent(requireContext(), type)); return true; });
    }
}
