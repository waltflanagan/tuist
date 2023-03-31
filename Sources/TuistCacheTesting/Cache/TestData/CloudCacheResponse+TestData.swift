import Foundation
@testable import TuistCache
import TuistSupportTesting

extension CloudCacheResponse {
    public static func test(url: URL = URL.test(), expiresAt: TimeInterval = 0) -> CloudCacheResponse {
        CloudCacheResponse(
            url: url,
            expiresAt: expiresAt
        )
    }
}
