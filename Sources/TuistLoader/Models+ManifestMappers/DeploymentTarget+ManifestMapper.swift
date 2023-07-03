import Foundation
import ProjectDescription
import TuistCore
import TuistGraph

extension TuistGraph.DeploymentTarget {
    /// Maps a ProjectDescription.DeploymentTarget instance into a TuistGraph.DeploymentTarget instance.
    /// - Parameters:
    ///   - manifest: Manifest representation of deployment target model.
    ///   - generatorPaths: Generator paths.
    static func from(manifest: ProjectDescription.DeploymentTarget) -> TuistGraph.DeploymentTarget {
        switch manifest {
        case let .iOS(version, _, _):
            return .iOS(version)
        case let .macOS(version):
            return .macOS(version)
        case let .watchOS(version):
            return .watchOS(version)
        case let .tvOS(version):
            return .tvOS(version)
        }
    }
}
