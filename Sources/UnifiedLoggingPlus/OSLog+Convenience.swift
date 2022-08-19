import Foundation

#if canImport(os)
import os.log

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
public extension OSLog {
    func debug(_ message: StaticString) {
        os_log(message, log: self, type: .debug)
    }

    func debug(_ message: StaticString, _ arg1: CVarArg) {
        os_log(message, log: self, type: .debug, arg1)
    }

    func debug(_ message: StaticString, _ arg1: CVarArg, _ arg2: CVarArg) {
        os_log(message, log: self, type: .debug, arg1, arg2)
    }

    func debug(_ message: StaticString, _ arg1: CVarArg, _ arg2: CVarArg, _ arg3: CVarArg) {
        os_log(message, log: self, type: .debug, arg1, arg2, arg3)
    }

    func info(_ message: StaticString) {
        os_log(message, log: self, type: .info)
    }

    func info(_ message: StaticString, _ arg1: CVarArg) {
        os_log(message, log: self, type: .info, arg1)
    }

    func info(_ message: StaticString, _ arg1: CVarArg, _ arg2: CVarArg) {
        os_log(message, log: self, type: .info, arg1, arg2)
    }

    func info(_ message: StaticString, _ arg1: CVarArg, _ arg2: CVarArg, _ arg3: CVarArg) {
        os_log(message, log: self, type: .info, arg1, arg2, arg3)
    }

    func error(_ message: StaticString) {
        os_log(message, log: self, type: .error)
    }

    func error(_ message: StaticString, _ arg1: CVarArg) {
        os_log(message, log: self, type: .error, arg1)
    }

	func error(_ message: StaticString, _ error: Error) {
		os_log(message, log: self, type: .error, String(describing: error))
	}

    func error(_ message: StaticString, _ arg1: CVarArg, _ arg2: CVarArg) {
        os_log(message, log: self, type: .error, arg1, arg2)
    }

	func error(_ message: StaticString, _ arg1: CVarArg, _ error: Error) {
		os_log(message, log: self, type: .error, arg1, String(describing: error))
	}

    func error(_ message: StaticString, _ arg1: CVarArg, _ arg2: CVarArg, _ arg3: CVarArg) {
        os_log(message, log: self, type: .error, arg1, arg2, arg3)
    }

    func fault(_ message: StaticString) {
        os_log(message, log: self, type: .fault)
    }

    func fault(_ message: StaticString, _ arg1: CVarArg) {
        os_log(message, log: self, type: .fault, arg1)
    }

    func fault(_ message: StaticString, _ arg1: CVarArg, _ arg2: CVarArg) {
        os_log(message, log: self, type: .fault, arg1, arg2)
    }

    func fault(_ message: StaticString, _ arg1: CVarArg, _ arg2: CVarArg, _ arg3: CVarArg) {
        os_log(message, log: self, type: .fault, arg1, arg2, arg3)
    }
}

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
public extension OSLog {
    convenience init?(bundleIdScopedCategory category: String) {
        guard let id = Bundle.main.bundleIdentifier else {
            return nil
        }

        self.init(subsystem: id, category: category)
    }

    convenience init(category: String, bundleIdFallback: String = "") {
        let subsystem = Bundle.main.bundleIdentifier ?? bundleIdFallback
        
        self.init(subsystem: subsystem, category: category)
    }
}
#endif
