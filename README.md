<p align="center">
  <img src="images/app-icon.png" alt="自定义悬浮通知图标" width="128">
</p>

<h1 align="center">自定义悬浮通知</h1>

<p align="center">
  无需 Root，无需 Xposed，只需授予通知使用权，即可深度定制 Android 悬浮通知。
</p>

这是“自定义悬浮通知”2.0.4 版的源码恢复与历史归档工程。原始 Java 源码遗失后，工程依据本人保留的 APK、JADX 输出和 Smali 指令重新整理。

## 关于应用

不需要root！不需要xposed！只需要通知使用权！

另外建议将 自定义悬浮通知 加入到后台白名单中！

全新2.0双模式系统

自定义悬浮通知用来定制你的悬浮通知。

你的状态栏是不是还在被国内各种应用推送侵犯？

或许这款应用可以帮你解决这个问题，它会拦截系统的通知，深度定制用户所需的通知方式。

你也无需担心会无法收到重要通知，以及与其他应用冲突。

自定义悬浮通知内置了在黑名单屏蔽应用，关键字屏蔽，历史通知查看以及两个模式的悬浮通知。

你可以让通知显示在手机屏幕的任何地方，不会在你的状态栏中留下垃圾。

默认模式下，你可以自定义悬浮通知的显示时间和样式，之后会有更多的悬浮通知样式可供修改。

磁贴模式下，当收到一条通知时，应用会显示一条磁贴常驻在屏幕中，你可以点击展开或收缩，除非你手动下滑删除，否则它就一直显示在屏幕中。

两个模式你都可以随意修改悬浮位置，在屏幕内最多可显示的通知。

另外应用为了防止你错过一些通知，在息屏状态下不会运行。

悬浮通知磁贴已开源：https://github.com/HelloLingC/floating-tile

如果你需要更加简洁好用的悬浮通知自定义，欢迎使用同开发者开发的：https://www.coolapk.com/apk/239909（悬浮通知磁贴）

## 主要功能

- 默认悬浮模式：自定义通知显示时间、样式和悬浮位置。
- 磁贴悬浮模式：通知以磁贴常驻屏幕，可点击展开或收缩，并通过下滑删除。
- 黑名单与关键词屏蔽：过滤指定应用或包含指定关键词的通知。
- 通知历史：查看已经接收的历史通知记录。
- 数量与排序：控制屏幕内最多显示的通知数量和多条通知的排列方向。
- 权限引导：引导开启通知使用权、悬浮窗、无障碍服务及忽略电池优化。

## 应用截图

| 首页 | 通知预览 | 全局设置 |
| :---: | :---: | :---: |
| <img src="images/screenshot-01-home.png" alt="应用首页" width="240"> | <img src="images/screenshot-02-notification-preview.png" alt="悬浮通知预览" width="240"> | <img src="images/screenshot-03-global-settings.png" alt="全局设置" width="240"> |
| 通知历史 | 应用黑名单 | 关于应用 |
| <img src="images/screenshot-04-notification-history.png" alt="通知历史" width="240"> | <img src="images/screenshot-05-app-blacklist.png" alt="应用黑名单" width="240"> | <img src="images/screenshot-06-about.png" alt="关于应用" width="240"> |

## 原应用信息

| 项目 | 内容 |
| --- | --- |
| 应用名 | 自定义悬浮通知 |
| 包名 | `com.lingc.notification` |
| 版本 | `2.0.4 (23)` |
| 更新时间 | 2020-01-25 18:53:09 |
| 最低 Android 版本 | API 19 |
| 目标 Android 版本 | API 28 |

## 项目结构

```text
notification-recovered/
├── app/                 可维护、参与构建的 Android 应用源码与资源
├── archive/             原 APK、未经整理的 JADX 和 Smali 恢复证据
├── images/              README 使用的应用图标与历史截图
├── gradle/              Gradle Wrapper
├── README.md            项目与应用介绍
└── RECOVERY.md          恢复范围、类名映射和限制说明
```

`archive/` 不参与 Gradle 构建。仓库只保存应用自身及恢复业务逻辑所需的反编译证据，不包含完整 AndroidX、Material 等第三方库的反编译源码。

## 在 Android Studio 中打开

使用 JDK 17 打开工程并等待 Gradle 同步。工程采用 AGP 8.10.1、Gradle 8.11.1 和 `compileSdk 35`，同时保留原应用的 `minSdk 19` 与 `targetSdk 28`。

```bash
./gradlew clean testDebugUnitTest lintDebug assembleDebug
```

调试 APK 输出到 `app/build/outputs/apk/debug/app-debug.apk`。

## 恢复状态

- 已恢复通知监听、兼容模式无障碍监听、默认悬浮、磁贴悬浮、通知历史、关键词屏蔽、黑名单、设置页面和权限引导。
- 已保留原 SharedPreferences 名称、key，以及 `data.dat`、`keys.dat`、`blackList.dat` 等历史数据文件名。
- JADX 未完整还原的方法已依据 Smali 重写，详细对照见 [RECOVERY.md](RECOVERY.md)。
- 按此前要求，尚未执行 Gradle 构建、测试或设备运行验证；首次打开时仍应完成同步与构建检查。

## 签名与安装

恢复工程使用新的 debug 签名，不能覆盖安装原签名 APK。测试恢复版前，需要先卸载旧版本；原 APK 已保存在 `archive/original/` 中。

## 相关项目

- [悬浮通知磁贴](https://github.com/HelloLingC/floating-tile)：本项目使用的悬浮通知磁贴已开源。
- [悬浮通知磁贴（酷安）](https://www.coolapk.com/apk/239909)：同开发者推出的更简洁版本。

## 许可说明

该仓库用于个人历史归档。AndroidX、Material 等第三方组件不包含其反编译源码，使用时请遵循各自许可证。
