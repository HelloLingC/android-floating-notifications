package com.lingc.notification.ui.intro;

import android.content.Intent;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;

import com.lingc.notification.R;
import com.lingc.notification.ui.activities.BaseActivity;
import com.lingc.notification.ui.activities.MainActivity;
import com.lingc.notification.util.Settings;

public class IntroActivity extends BaseActivity {
    private ViewPager pager;
    private TextView done;
    private ImageView back;
    private ImageView next;

    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.activity_intro);
        if (getSupportActionBar() != null) getSupportActionBar().hide();
        pager = findViewById(R.id.introac_view_pager);
        done = findViewById(R.id.introac_done_btn);
        back = findViewById(R.id.introac_back_btn);
        next = findViewById(R.id.introac_next_btn);
        int[] messages = {R.string.first_infomation, R.string.first_intro_floating, R.string.first_intro_tile, R.string.first_intro_setting};
        String[] titles = {"使用说明", "默认模式", "磁贴模式", "设置"};
        pager.setAdapter(new GuideAdapter(titles, messages));
        findViewById(R.id.introac_skip_btn).setOnClickListener(v -> finishGuide());
        done.setOnClickListener(v -> finishGuide());
        back.setOnClickListener(v -> pager.setCurrentItem(Math.max(0, pager.getCurrentItem() - 1)));
        next.setOnClickListener(v -> pager.setCurrentItem(Math.min(messages.length - 1, pager.getCurrentItem() + 1)));
        pager.addOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener() {
            @Override public void onPageSelected(int position) {
                back.setVisibility(position == 0 ? View.GONE : View.VISIBLE);
                next.setVisibility(position == messages.length - 1 ? View.GONE : View.VISIBLE);
                done.setVisibility(position == messages.length - 1 ? View.VISIBLE : View.GONE);
            }
        });
    }

    private void finishGuide() {
        Settings.app(this).edit().putBoolean("isFirstBoot", false).apply();
        startActivity(new Intent(this, MainActivity.class));
        finish();
    }

    private final class GuideAdapter extends PagerAdapter {
        private final String[] titles;
        private final int[] messages;
        GuideAdapter(String[] titles, int[] messages) { this.titles = titles; this.messages = messages; }
        @Override public int getCount() { return titles.length; }
        @Override public boolean isViewFromObject(@NonNull View view, @NonNull Object object) { return view == object; }
        @NonNull @Override public Object instantiateItem(@NonNull ViewGroup container, int position) {
            LinearLayout page = new LinearLayout(IntroActivity.this);
            page.setOrientation(LinearLayout.VERTICAL);
            page.setGravity(Gravity.CENTER);
            int padding = Math.round(28 * getResources().getDisplayMetrics().density);
            page.setPadding(padding, padding, padding, padding);
            TextView title = new TextView(IntroActivity.this); title.setText(titles[position]); title.setTextSize(28); title.setTextColor(0xffffffff);
            TextView message = new TextView(IntroActivity.this); message.setText(messages[position]); message.setTextSize(17); message.setTextColor(0xffffffff); message.setPadding(0, padding, 0, 0);
            page.addView(title); page.addView(message); container.addView(page); return page;
        }
        @Override public void destroyItem(@NonNull ViewGroup container, int position, @NonNull Object object) { container.removeView((View) object); }
    }
}
