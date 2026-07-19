package com.lingc.notification.ui.activities;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;

import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.lingc.notification.R;
import com.lingc.notification.ui.fragment.MainSettingsFragment;
import com.lingc.notification.ui.fragment.OtherFragment;
import com.lingc.notification.ui.intro.IntroActivity;
import com.lingc.notification.util.Settings;

public class MainActivity extends BaseActivity implements MainSettingsFragment.Navigator {
    private Toolbar toolbar;
    private FloatingActionButton donationButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        donationButton = findViewById(R.id.fab);
        donationButton.setOnClickListener(v -> showDonationDialog());
        BottomNavigationView navigation = findViewById(R.id.main_bottom_nav);
        navigation.setOnItemSelectedListener(item -> {
            if (item.getItemId() == R.id.bottom_nav_about) {
                showFragment(new OtherFragment(), getString(R.string.about), true);
            } else {
                showFragment(new MainSettingsFragment(), getString(R.string.app_name), true);
            }
            return true;
        });
        if (savedInstanceState == null) showFragment(new MainSettingsFragment(), getString(R.string.app_name), true);
    }

    @Override
    public void open(Fragment fragment, String title) {
        showFragment(fragment, title, false);
    }

    private void showFragment(Fragment fragment, String title, boolean showDonation) {
        toolbar.setTitle(title);
        donationButton.setVisibility(showDonation ? View.VISIBLE : View.GONE);
        getSupportFragmentManager().beginTransaction().replace(R.id.main_fragment, fragment).commit();
    }

    @Override public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_main, menu);
        menu.findItem(R.id.action_auto_update).setChecked(Settings.app(this).getBoolean("autoUpdate", true));
        return true;
    }

    @Override public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_information) {
            startActivity(new Intent(this, IntroActivity.class));
        } else if (item.getItemId() == R.id.action_auto_update) {
            item.setChecked(!item.isChecked());
            Settings.app(this).edit().putBoolean("autoUpdate", item.isChecked()).apply();
        } else if (item.getItemId() == R.id.action_doate) {
            showDonationDialog();
        } else if (item.getItemId() == R.id.action_about) {
            new AlertDialog.Builder(this).setTitle("Notification Listener")
                    .setMessage("APPLICATION Service is configured in system notification-listener settings.\n\n恢复工程版本：2.0.4 (23)")
                    .setPositiveButton(R.string.dialog_close_btn, null).show();
        }
        return true;
    }

    private void showDonationDialog() {
        new AlertDialog.Builder(this).setTitle(R.string.dialog_donation_title)
                .setMessage(R.string.dialog_donation_text)
                .setPositiveButton(R.string.dialog_donate_btn, (dialog, which) -> startActivity(new Intent(this, DoateActivity.class)))
                .setNeutralButton(R.string.dialog_donation_list_btn, (dialog, which) -> openUrl("https://lcblog.cn/donate"))
                .setNegativeButton(R.string.dialog_cancel_btn, null).show();
    }

    private void openUrl(String url) {
        try { startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(url))); } catch (RuntimeException ignored) {}
    }
}
