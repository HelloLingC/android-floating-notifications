package com.lingc.notification.ui.fragment;

import android.os.Bundle;
import androidx.preference.PreferenceFragmentCompat;
import com.lingc.notification.R;

public class TileSettingsFragment extends PreferenceFragmentCompat {
    @Override public void onCreatePreferences(Bundle state, String rootKey) {
        getPreferenceManager().setSharedPreferencesName("tileSettings");
        setPreferencesFromResource(R.xml.pref_tile_lay, rootKey);
    }
}
