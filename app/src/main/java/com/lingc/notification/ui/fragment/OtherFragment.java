package com.lingc.notification.ui.fragment;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

public class OtherFragment extends Fragment {
    @Nullable @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle state) {
        LinearLayout layout = new LinearLayout(requireContext());
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setGravity(Gravity.CENTER_HORIZONTAL);
        int padding = Math.round(24 * getResources().getDisplayMetrics().density);
        layout.setPadding(padding, padding, padding, padding);
        TextView info = new TextView(requireContext());
        info.setText("开发者：LingC\n版本：2.0.4 (23)\n原编译时间：2020-01-25 18:48:58");
        layout.addView(info);
        layout.addView(button("获取应用源代码", "https://github.com/HelloLingC/floating-tile"));
        layout.addView(button("检测更新", "https://www.coolapk.com/apk/com.lingc.notification"));
        layout.addView(button("捐赠", "https://lcblog.cn/donate"));
        return layout;
    }

    private Button button(String text, String url) {
        Button button = new Button(requireContext());
        button.setText(text);
        button.setOnClickListener(v -> {
            try { startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(url))); } catch (RuntimeException ignored) {}
        });
        return button;
    }
}
