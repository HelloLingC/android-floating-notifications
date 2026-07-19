package com.lingc.notification.ui.activities;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.lingc.notification.R;
import com.lingc.notification.data.NotificationRecord;
import com.lingc.notification.data.NotificationRepository;

import java.util.List;

public class ManagerActivity extends BaseActivity {
    private final NotificationRepository repository = new NotificationRepository();
    private HistoryAdapter adapter;

    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.activity_manager);
        if (getSupportActionBar() != null) getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        RecyclerView list = findViewById(R.id.mannager_recycler_view);
        list.setLayoutManager(new LinearLayoutManager(this));
        adapter = new HistoryAdapter(repository.getHistory());
        list.setAdapter(adapter);
    }

    @Override public boolean onCreateOptionsMenu(Menu menu) { getMenuInflater().inflate(R.menu.menu_manager, menu); return true; }
    @Override public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_manager_delete) { repository.clearHistory(); adapter.replace(repository.getHistory()); }
        else if (item.getItemId() == android.R.id.home) finish();
        return true;
    }

    private final class HistoryAdapter extends RecyclerView.Adapter<HistoryAdapter.Holder> {
        private List<NotificationRecord> items;
        HistoryAdapter(List<NotificationRecord> items) { this.items = items; }
        void replace(List<NotificationRecord> replacement) { items = replacement; notifyDataSetChanged(); }
        @NonNull @Override public Holder onCreateViewHolder(@NonNull ViewGroup parent, int type) { return new Holder(LayoutInflater.from(parent.getContext()).inflate(R.layout.item_notification, parent, false)); }
        @Override public void onBindViewHolder(@NonNull Holder holder, int position) {
            NotificationRecord item = items.get(items.size() - 1 - position);
            holder.title.setText(item.getTitle()); holder.content.setText(item.getContent()); holder.time.setText(item.getTimestamp());
            try { holder.icon.setImageDrawable(getPackageManager().getApplicationIcon(item.getPackageName())); }
            catch (Exception ignored) { holder.icon.setImageResource(R.mipmap.ic_launcher); }
        }
        @Override public int getItemCount() { return items.size(); }
        final class Holder extends RecyclerView.ViewHolder {
            final ImageView icon; final TextView title, content, time;
            Holder(View view) { super(view); icon = view.findViewById(R.id.item_notification_icon_img); title = view.findViewById(R.id.item_notification_title_text); content = view.findViewById(R.id.item_notification_content_text); time = view.findViewById(R.id.item_notification_time_text); }
        }
    }
}
