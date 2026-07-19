package com.lingc.notification.ui.activities;

import android.os.Bundle;
import android.text.InputType;
import android.view.MenuItem;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListView;

import androidx.appcompat.app.AlertDialog;

import com.lingc.notification.R;
import com.lingc.notification.data.NotificationRepository;

import java.util.List;

public class KeyPreventActivity extends BaseActivity {
    private final NotificationRepository repository = new NotificationRepository();
    private List<String> rules;
    private ArrayAdapter<String> adapter;

    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.activity_key_prevent);
        if (getSupportActionBar() != null) getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        rules = repository.getKeywords();
        ListView list = findViewById(R.id.keypre_list_view);
        adapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1, rules);
        list.setAdapter(adapter);
        list.setOnItemLongClickListener((parent, view, position, id) -> {
            new AlertDialog.Builder(this).setMessage("删除规则：" + rules.get(position) + "？")
                    .setPositiveButton(R.string.action_delete, (d, w) -> { rules.remove(position); save(); })
                    .setNegativeButton(R.string.dialog_cancel_btn, null).show();
            return true;
        });
        findViewById(R.id.keypre_add_fab).setOnClickListener(v -> addRule());
        if (rules.isEmpty()) new AlertDialog.Builder(this).setTitle("关键词屏蔽")
                .setMessage(R.string.first_key_information).setPositiveButton(R.string.dialog_close_btn, null).show();
    }

    private void addRule() {
        EditText input = new EditText(this);
        input.setHint("title: 关键词");
        input.setInputType(InputType.TYPE_CLASS_TEXT);
        new AlertDialog.Builder(this).setTitle("添加规则").setView(input)
                .setPositiveButton(R.string.dialog_ok_btn, (dialog, which) -> {
                    String value = input.getText().toString().trim();
                    if (!value.isEmpty()) { rules.add(value); save(); }
                }).setNegativeButton(R.string.dialog_cancel_btn, null).show();
    }

    private void save() { repository.saveKeywords(rules); adapter.notifyDataSetChanged(); }
    @Override public boolean onOptionsItemSelected(MenuItem item) { if (item.getItemId() == android.R.id.home) finish(); return true; }
}
