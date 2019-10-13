// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Model",
  platforms: [
    .iOS(.v11)
  ],
  products: [
    .library(
      name: "Model",
      targets: ["Model"]),
  ],
  dependencies: [
    .package(path: "../Utility")
  ],
  targets: [
    .target(
      name: "Model",
      dependencies: ["Utility"]),
    .testTarget(
      name: "ModelTests",
      dependencies: ["Model"]),
  ]
)
