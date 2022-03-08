import Foundation
import os.log

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
public extension OSLog {
    func debug(_ message: StaticString, args: CVarArg...) {
        os_log(message, log: self, type: .debug, args)
    }

    func info(_ message: StaticString, args: CVarArg...) {
        os_log(message, log: self, type: .info, args)
    }

    func error(_ message: StaticString, args: CVarArg...) {
        os_log(message, log: self, type: .error, args)
    }

    func fault(_ message: StaticString, args: CVarArg...) {
        os_log(message, log: self, type: .fault, args)
    }
}

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
public extension OSLog {
    convenience init?(bundleIdScopedCategeory category: String) {
        guard let id = Bundle.main.bundleIdentifier else {
            return nil
        }

        self.init(subsystem: id, category: category)
    }
}
