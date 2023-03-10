// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Chartonce",
  platforms: [
    .iOS(.v13), .watchOS(.v6), .macOS(.v11)
  ],
  products: [
    .library(
      name: "Chartonce",
      targets: ["Chartonce"]
    )
  ],
  targets: [
    .target(
      name: "Chartonce",
      path: "Sources"
    ),
    .testTarget(
      name: "ChartonceTests",
      dependencies: ["Chartonce"],
      path: "Tests",
      exclude: ["CheckCocoaPodsQualityIndexes.rb"]
    )
  ]
)
