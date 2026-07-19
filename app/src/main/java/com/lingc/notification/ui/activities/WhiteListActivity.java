package com.lingc.notification.ui.activities;

import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.lingc.notification.R;
import com.lingc.notification.data.NotificationRepository;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Set;

public class WhiteListActivity extends BaseActivity {
    private final NotificationRepository repository = new NotificationRepository();

    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.activity_white_list);
        if (getSupportActionBar() != null) getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        ProgressBar progress = findViewById(R.id.manager_probar);
        RecyclerView list = findViewById(R.id.whitelist_recycler_view);
        list.setLayoutManager(new LinearLayoutManager(this));
        new Thread(() -> {
            List<ApplicationInfo> apps = new ArrayList<>(getPackageManager().getInstalledApplications(0));
            for (int index = apps.size() - 1; index >= 0; index--) {
                if (getPackageName().equals(apps.get(index).packageName)) apps.remove(index);
            }
            Collections.sort(apps, Comparator.comparing(
                    app -> String.valueOf(app.loadLabel(getPackageManager())),
                    String.CASE_INSENSITIVE_ORDER));
            runOnUiThread(() -> { progress.setVisibility(View.GONE); list.setAdapter(new AppAdapter(apps, repository.getBlacklist())); });
        }).start();
    }

    @Override public boolean onOptionsItemSelected(MenuItem item) { if (item.getItemId() == android.R.id.home) finish(); return true; }

    private final class AppAdapter extends RecyclerView.Adapter<AppAdapter.Holder> {
        final List<ApplicationInfo> apps; final Set<String> selected;
        AppAdapter(List<ApplicationInfo> apps, Set<String> selected) { this.apps = apps; this.selected = selected; }
        @NonNull @Override public Holder onCreateViewHolder(@NonNull ViewGroup parent, int type) { return new Holder(LayoutInflater.from(parent.getContext()).inflate(R.layout.item_app, parent, false)); }
        @Override public void onBindViewHolder(@NonNull Holder holder, int position) {
            ApplicationInfo app = apps.get(position);
            holder.icon.setImageDrawable(app.loadIcon(getPackageManager())); holder.name.setText(app.loadLabel(getPackageManager())); holder.packageName.setText(app.packageName); holder.checked.setChecked(selected.contains(app.packageName));
            holder.itemView.setOnClickListener(v -> { if (!selected.add(app.packageName)) selected.remove(app.packageName); holder.checked.setChecked(selected.contains(app.packageName)); repository.saveBlacklist(selected); });
        }
        @Override public int getItemCount() { return apps.size(); }
        final class Holder extends RecyclerView.ViewHolder {
            final ImageView icon; final TextView name, packageName; final CheckBox checked;
            Holder(View view) { super(view); icon = view.findViewById(R.id.item_app_icon_img); name = view.findViewById(R.id.item_app_name_text); packageName = view.findViewById(R.id.item_app_package_text); checked = view.findViewById(R.id.item_app_checkbox); }
        }
    }
}
