import XCTest

import SnapshotTesting


class SomeTests: XCTestCase {
    func test_1() async throws {
        assertSnapshot(of: "foo", as: .lines)
    }
}
