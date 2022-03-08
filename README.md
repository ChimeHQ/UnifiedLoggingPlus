[![License][license badge]][license]

# UnifiedLoggingPlus

Lightweight utilities for making OSLog more pleasant.

## Integration

Swift Package Manager:

```swift
dependencies: [
    .package(url: "https://github.com/ChimeHQ/UnifiedLoggingPlus")
]
```

## Usage

Includes a simple `Signpost` type that encapsulates `os_signpost` calls, and a bunch of simple extension on `OSLog`.

```swift
let log = OSLog(bundleIdScopedCategory: "MyCategory")!

log.debug("concise log statements")

let result = log.signpostWithin("name") {
    // this gets measured by the signpost
}

```



### Suggestions or Feedback

We'd love to hear from you! Get in touch via [twitter](https://twitter.com/chimehq), an issue, or a pull request.

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.

[license]: https://opensource.org/licenses/BSD-3-Clause
[license badge]: https://img.shields.io/github/license/ChimeHQ/UnifiedLoggingPlus
