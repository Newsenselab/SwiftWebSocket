// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "SwiftWebSocket",
	platforms: [
		.iOS(.v13),         //.v8 - .v13
		.macOS(.v10_15),    //.v10_10 - .v10_15
		.tvOS(.v13),        //.v9 - .v13
	],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "SwiftWebSocket", targets: ["SwiftWebSocket"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
//	publicHeadersPath: "./Sources/myPackage/headers", // not working somehow
    targets: [
        .target(
            name: "SwiftWebSocket",
            dependencies: [],
			linkerSettings: [
				.linkedLibrary("z"),]), // libz.dylib
		
        .testTarget(
            name: "SwiftWebSocketTests",
            dependencies: ["SwiftWebSocket"]),
    ]
)
