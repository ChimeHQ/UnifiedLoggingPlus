[![Build Status][build status badge]][build status]
[![License][license badge]][license]
[![Platforms][platforms badge]][platforms]

# UnifiedLoggingPlus

Lightweight utilities for making OSLog more pleasant. Honestly, this is not a lot of code. But, it's handy and I've come to apperciate it.

## Integration

Swift Package Manager:

```swift
dependencies: [
    .package(url: "https://github.com/ChimeHQ/UnifiedLoggingPlus")
]
```

## Usage

Simple helper for `Logger`.

```swift
let logger = Logger(category: "MyCategory") // uses OSLog(category:)
```

More consise logging statements.

```swift
let log = OSLog(bundleIdScopedCategory: "MyCategory")!
let otherLog = OSLog(category: "MyCategory") // defaults to using bundle-id for scoping

log.debug("A")
log.info("B: %{public}@", value)

do {
    try thingThatThrows()
} catch {
    log.error("print error type without conversion: %{public}@", error)
}

```

`Signpost` is a simple type that encapsulates `os_signpost` calls, and a bunch of simple extension on `OSLog`.

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

[build status]: https://github.com/ChimeHQ/UnifiedLoggingPlus/actions
[build status badge]: https://github.com/ChimeHQ/UnifiedLoggingPlus/workflows/CI/badge.svg
[license]: https://opensource.org/licenses/BSD-3-Clause
[license badge]: https://img.shields.io/github/license/ChimeHQ/UnifiedLoggingPlus
[platforms]: https://swiftpackageindex.com/ChimeHQ/UnifiedLoggingPlus
[platforms badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FChimeHQ%2FUnifiedLoggingPlus%2Fbadge%3Ftype%3Dplatforms
