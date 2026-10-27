# UMCommon iOS SDK · Swift Package Manager

友盟+基础组件 UMCommon 的 Swift Package Manager 分发仓库。

UMDevice 是 UMCommon 的必需依赖，已包含在 `UMCommon` product 中，无需单独添加 UMDevice 包。

## 版本对应关系

| SwiftPM tag | UMCommon | UMDevice |
| --- | --- | --- |
| `7.7.0` | `7.7.0` | `3.6.0` |

## 环境要求

- iOS 12.0 及以上。
- Xcode 14.0 及以上（Package.swift 使用 Swift tools 5.7）。
- 支持 arm64 真机，以及 arm64 / x86_64 iOS 模拟器。

## Xcode 集成

1. 打开工程，选择 **File → Add Package Dependencies**。
2. 输入仓库地址：

   ```text
   https://github.com/umeng/umcommon-ios-spm.git
   ```

3. 依赖规则选择 **Exact Version**，填写 `7.7.0`。
4. 点击 **Add Package**，将 `UMCommon` product 添加到 App Target。

引入 `UMCommon` product 后，UMCommon 和 UMDevice 两个二进制组件会一起参与链接。

## Package.swift 集成

在现有包的 `dependencies` 中添加：

```swift
.package(url: "https://github.com/umeng/umcommon-ios-spm.git", exact: "7.7.0")
```

在使用 SDK 的 target 的 `dependencies` 中添加：

```swift
.product(name: "UMCommon", package: "umcommon-ios-spm")
```

Swift 代码中使用：

```swift
import UMCommon
```

SDK 初始化及接口使用请参考 [友盟官方文档](https://developer.umeng.com/docs/66632/detail/66885)。

## 与其他友盟 SDK 一起集成

不同业务 SDK 使用独立仓库。本仓库仅提供 UMCommon 和 UMDevice，不包含 Push、APM、Share 等业务 SDK。

集成依赖 UMCommon 的业务 SDK 时，如果其 SwiftPM 包未声明对本仓库的依赖，需要在 App Target 中同时添加本仓库的 `UMCommon` product，并遵循对应业务 SDK 的兼容版本说明。

不要通过 CocoaPods、手动导入或其他 SwiftPM 包重复引入 UMCommon / UMDevice，以免出现重复符号或模块冲突。

## 版本管理

- 已发布的 tag 不修改、不删除，每个 tag 固定一组 SDK 版本。
- README 等文档可以在 `main` 分支独立更新，无需为文档修改发布新版本。
- SDK 二进制更新后使用新的三段式版本 tag 发布。

## 许可

SDK 为友盟版权所有的闭源二进制组件，使用须遵循友盟 SDK 相关协议。
