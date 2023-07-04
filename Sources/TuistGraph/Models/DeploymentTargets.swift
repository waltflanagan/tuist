import Foundation

// MARK: - DeploymentTargets

public struct DeploymentTargets: Hashable, Codable {
    
    public let iOS: String?
    public let macOS: String?
    public let watchOS: String?
    public let tvOS: String?
    
    public init(iOS: String? = nil, macOS: String? = nil, watchOS: String? = nil, tvOS: String? = nil) {
        self.iOS = iOS
        self.macOS = macOS
        self.watchOS = watchOS
        self.tvOS = tvOS
    }
    
    public subscript(platform: Platform) -> String? {
        switch platform {
        case .iOS:
            return iOS
        case .macOS:
            return macOS
        case .watchOS:
            return watchOS
        case .tvOS:
            return tvOS
        }
    }

    public var configuredVersions: [(platform: Platform, versionString: String)] {
        var versions = [(Platform, String)]()
        
        if let iOS {
            versions.append((.iOS, iOS))
        }
        
        if let macOS {
            versions.append((.macOS, macOS))
        }

        if let watchOS {
            versions.append((.watchOS, watchOS))
        }

        if let tvOS {
            versions.append((.tvOS, tvOS))
        }
        
        return versions
    }

    public static func iOS(_ version: String) -> DeploymentTargets {
        return DeploymentTargets(iOS: version)
    }
    
    public static func macOS(_ version: String) -> DeploymentTargets {
        return DeploymentTargets(macOS: version)
    }
    
    public static func watchOS(_ version: String) -> DeploymentTargets {
        return DeploymentTargets(watchOS: version)
    }
    
    public static func tvOS(_ version: String) -> DeploymentTargets {
        return DeploymentTargets(tvOS: version)
    }
    
    public static func empty() -> DeploymentTargets {
        return DeploymentTargets()
    }
}
