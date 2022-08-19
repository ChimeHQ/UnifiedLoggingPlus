import Foundation
import os.log

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
public extension Logger {
	init(category: String, bundleIdFallback: String = "") {
		self.init(OSLog(category: category, bundleIdFallback: bundleIdFallback))
	}
}
