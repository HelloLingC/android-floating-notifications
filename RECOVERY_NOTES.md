# Notification Recovered

这是从 `com.lingc.notification.apk` 恢复并重新整理的 Android Studio Java 工程。

## 构建

需要 JDK 17 和 Android SDK Platform 35：

```shell
./gradlew clean testDebugUnitTest lintDebug assembleDebug
```

调试 APK 输出到：

`app/build/outputs/apk/debug/app-debug.apk`

> 当前交付按用户要求跳过了 Gradle/SDK 实际构建验证；已完成 XML、资源引用、Manifest 组件和 Wrapper 完整性的静态检查。

## 恢复范围

- 保留包名 `com.lingc.notification`、版本 `2.0.4 (23)`、minSdk 19、targetSdk 28。
- 保留通知监听、兼容模式无障碍监听、默认悬浮、磁贴悬浮、通知历史、关键词屏蔽、黑名单和权限引导。
- 保留原 SharedPreferences 文件名和 `data.dat`、`keys.dat`、`blackList.dat` 文件名。
- 将反编译代码中的混淆 Android 支持库调用改为公开 AndroidX API。
- 从 APK 合并资源中仅迁移应用使用的布局、菜单、图片和配置，依赖资源由 Gradle 提供。

## Smali 对照

以下未被 JADX 完整还原的逻辑已根据 Apktool Smali 和可观察行为重写：

| 恢复代码 | Smali 来源 |
| --- | --- |
| `NotificationService.onNotificationRemoved` | `recovered-apktool/smali/com/lingc/notification/NotificationService.smali` |
| `FloatingNotificationController` | `recovered-apktool/smali/c/b/a/e/a/f.smali` |
| `TileNotificationController` | `recovered-apktool/smali/c/b/a/e/b/f.smali` |
| `ShadowLinearLayout.updateShadow` | `recovered-apktool/smali/d/a/a/c.smali` |

原 APK 的大量 `a.b.*` 文件属于被混淆的 AndroidX/Support Library，不应复制到新工程。原 `c.b.a.*` 业务类已按职责合并进 `data`、`overlay`、`ui` 和 `util` 包。

## 签名说明

恢复工程使用 Android 默认 debug 签名。它不能覆盖安装原签名 APK；安装前需要卸载旧版本。原 APK 的注释、局部变量名、Gradle 配置和签名私钥无法从 APK 恢复。

## 后续现代化

本阶段刻意保留 targetSdk 28，以减少旧行为变化。若要发布到现代应用商店，应在单独阶段升级 targetSdk，并重新设计通知权限、后台限制、悬浮窗和包可见性逻辑。
