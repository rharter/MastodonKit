import XCTest
@testable import MastodonKit

class NotificationTests: XCTestCase {
    func testNotificationFromJSON() {
        let fixture = try? Fixture.load(fileName: "Fixtures/Notification.json")
        let dictionary = fixture as! JSONDictionary
        let notification = Notification(from: dictionary)

        XCTAssertEqual(notification?.id, 42)
        XCTAssertEqual(notification?.type, NotificationType.favourite)
        XCTAssertEqual(notification?.createdAt.timeIntervalSince1970, 1482239655.132)
        XCTAssertNotNil(notification?.account)
        XCTAssertNotNil(notification?.status)
    }
}
