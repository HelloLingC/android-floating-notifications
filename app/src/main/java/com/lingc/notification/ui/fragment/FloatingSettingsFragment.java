package com.lingc.notification.ui.fragment;

import android.os.Bundle;
import androidx.preference.PreferenceFragmentCompat;
import com.lingc.notification.R;

public class FloatingSettingsFragment extends PreferenceFragmentCompat {
    @Override public void onCreatePreferences(Bundle state, String rootKey) {
        getPreferenceManager().setSharedPreferencesName("floatingSettings");
        setPreferencesFromResource(R.xml.pref_floating_lay, rootKey);
    }
}
