import XCTest

import SnapshotTesting


class SomeTests: XCTestCase {
    func test_1() async throws {
        assertSnapshot(of: "foo", as: .lines)
    }

    override func invokeTest() {
        withSnapshotTesting(record: .all, diffTool: .ksdiff) {
            super.invokeTest()
        }
    }
}
