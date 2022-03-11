import XCTest
@testable import UnifiedLoggingPlus
import os.log

class OSLogTests: XCTestCase {
    func testDebugLogging() {
        let log = OSLog(subsystem: "UnifiedLoggingPlusTests", category: "tests")

        log.debug("test")
        log.debug("test %@", "arg1")
        log.debug("test %@, %@", "arg1", "arg2")
        log.debug("test %@, %@, %@", "arg1", "arg2", "arg3")
    }
}
