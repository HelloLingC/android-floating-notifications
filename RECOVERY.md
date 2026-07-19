# 恢复记录

这是从 `com.lingc.notification.apk` 恢复并重新整理的 Android Studio Java 工程。

## 原始输入与证据

- 原始 APK：`archive/original/com.lingc.notification.apk`
- APK SHA-256：`33b580efeda87f54730b573ab1e8c9f72bca9c3586a799653c2f8c0f6dcc9c09`
- 应用自身 JADX 输出：`archive/jadx/com/lingc/notification/`
- R8 合并及混淆业务代码：`archive/jadx-r8-merged/c/b/a/`
- Manifest、Apktool 元数据和 Smali：`archive/apktool/`

这些文件只用于证明和复核恢复过程，不参与 Gradle 构建。

## 恢复范围

- 保留包名 `com.lingc.notification`、版本 `2.0.4 (23)`、`minSdk 19`、`targetSdk 28`。
- 保留通知监听、兼容模式无障碍监听、默认悬浮、磁贴悬浮、通知历史、关键词屏蔽、黑名单和权限引导。
- 保留原 SharedPreferences 文件名和 `data.dat`、`keys.dat`、`blackList.dat` 文件名。
- 将反编译代码中的混淆 Android 支持库调用改为公开 AndroidX API。
- 从 APK 合并资源中只迁移应用使用的布局、菜单、图片和配置；依赖资源由 Gradle 提供。
- 将原先散落的匿名监听器合并回所属 Activity、Fragment 或控制器。

## 代码结构映射

| 恢复后的目录 | 职责 |
| --- | --- |
| `com.lingc.notification` | Application、通知监听、无障碍监听和短信接收器 |
| `data` | 历史通知模型、序列化及旧文件兼容 |
| `overlay` | 默认悬浮、磁贴悬浮、位置编辑及窗口协调 |
| `ui.activities` | 启动、主页、历史、黑名单、关键词、捐赠和异常页面 |
| `ui.fragment` | 主设置、全局设置、默认模式、磁贴模式和关于页面 |
| `util` | 设置访问、关键词过滤和异常处理 |
| `widgets.tile` | 磁贴模式圆形图标控件 |
| `top.limuyang2.shadowlayoutlib` | 从 APK 内置恢复的阴影布局控件 |

## Smali 对照

以下未被 JADX 完整还原的逻辑已根据 Apktool Smali 和可观察行为重写：

| 恢复代码 | Smali 来源 |
| --- | --- |
| `NotificationService.onNotificationRemoved` | `archive/apktool/smali/com/lingc/notification/NotificationService.smali` |
| `FloatingNotificationController` | `archive/apktool/smali/c/b/a/e/a/f.smali` |
| `TileNotificationController` | `archive/apktool/smali/c/b/a/e/b/f.smali` |
| `ShadowLinearLayout.updateShadow` | `archive/apktool/smali/d/a/a/c.smali` |

原 APK 中大量混淆代码属于 AndroidX/Support Library，不应复制到新工程。被识别为业务逻辑的 `c.b.a.*` 代码已按职责整理至 `data`、`overlay`、`ui` 和 `util` 包。

## 数据兼容性

- `LegacyObjectStore` 继续使用原 SharedPreferences 名称和旧文件名。
- `ObjectFileCodec` 保留 Java 对象序列化语义。
- 通知记录字段、黑名单及关键词规则的顺序保持不变。
- 自身通知、系统通知、息屏状态、黑名单和关键词过滤顺序保持原行为。

## 构建状态

标准检查命令为：

```shell
./gradlew clean testDebugUnitTest lintDebug assembleDebug
```

按照此前要求，恢复交付跳过了 Gradle/SDK 实际构建验证；已完成 XML、资源引用、Manifest 组件、归档哈希和 Wrapper 完整性的静态检查。

## 签名与限制

恢复工程使用 Android 默认 debug 签名，不能覆盖安装原签名 APK。原始注释、源码排版、部分局部变量名、原 Gradle 配置和签名私钥无法从 APK 恢复。

本阶段刻意保留 `targetSdk 28`，以减少旧行为变化。若要重新发布到现代应用商店，应在单独阶段升级 targetSdk，并重新设计通知权限、后台限制、悬浮窗和包可见性逻辑。
