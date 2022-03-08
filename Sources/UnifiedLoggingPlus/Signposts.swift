#if canImport(os)
import os.log

@available(macOS 10.14, iOS 12.0, watchOS 5.0, tvOS 12.0, *)
public struct Signpost {
    public let name: StaticString
    public let log: OSLog
    public let id: OSSignpostID

    public init(name: StaticString, log: OSLog, id: OSSignpostID = .exclusive) {
        self.name = name
        self.log = log
        self.id = id
    }

    public func begin() {
        os_signpost(.begin, log: log, name: name, signpostID: id)
    }

    public func end() {
        os_signpost(.end, log: log, name: name, signpostID: id)
    }

    public func within<T>(_ block: () throws -> T) rethrows -> T {
        begin()

        let value = try block()

        end()

        return value
    }
}

@available(macOS 10.14, iOS 12.0, watchOS 5.0, tvOS 12.0, *)
public extension OSLog {
    func signpostWithin<T>(_ name: StaticString, id: OSSignpostID = .exclusive, block: () throws -> T) rethrows -> T {
        return try signpost(name, id: id).within(block)
    }

    func signpost(_ name: StaticString, id: OSSignpostID = .exclusive) -> Signpost {
        return Signpost(name: name, log: self, id: id)
    }
}
#endif
