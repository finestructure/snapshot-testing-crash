import XCTest

import SnapshotTesting


class SomeTests: XCTestCase {
    func test_crash() async throws {
        // This crashes with `Current context must not be nil`
        assertSnapshot(of: "foo", as: .lines)
    }

    func test_no_crash() throws {
        // This does not crash
        assertSnapshot(of: "foo", as: .lines)
    }

    override func invokeTest() {
        withSnapshotTesting(record: .all, diffTool: .ksdiff) {
            super.invokeTest()
        }
    }
}
