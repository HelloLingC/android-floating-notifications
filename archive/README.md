# 反编译证据

此目录保存“自定义悬浮通知”源码恢复所需的最小证据集，不参与 Android Studio 或 Gradle 构建。

```text
archive/
├── original/            原始 APK
├── jadx/                com.lingc.notification 的未经整理 JADX 输出
├── jadx-r8-merged/      由引用关系和 Smali 识别出的 R8 合并业务代码
├── apktool/             解码 Manifest、元数据及对应 Smali
└── SHA256SUMS           原始输入校验值
```

没有归档完整 AndroidX、Material 或其他第三方依赖的反编译代码。这些依赖由 Gradle 和各自上游许可证管理。

工作区同级的 `notification-recovered-apktool/` 与 `notification-recovered-java/` 是完整临时输出，不属于本 Git 仓库；确认不再需要复核第三方库后可以单独删除。
