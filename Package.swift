// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
	name: "DateTools",
	defaultLocalization: "en",
	platforms: [
		.iOS(.v12),
		.tvOS(.v12),
		.macOS(.v10_13),
	],
	products: [
		.library(
			name: "DateTools", targets: ["DateTools"]),
	],
	dependencies: [
	],
	targets: [
		.target(name: "DateTools",
				path: "DateToolsSwift/DateTools",
				resources: [.copy("DateTools.bundle")],
				swiftSettings: [.define("PACKAGE_MANAGER"),]
		),
//		.testTarget(
//			name: "DateToolsSwiftTests",
//			dependencies: ["DateToolsSwift"],
//			path: "DateToolsSwift/Tests/PackageTests",
//			exclude: ["DateToolsTestsTests", "DateToolsTests"]),
	]
)

