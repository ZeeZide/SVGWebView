// swift-tools-version:5.3

import PackageDescription

let package = Package(
  
  name: "SVGWebView",

  platforms: [
    .macOS(.v10_15), .iOS(.v13)
  ],

  products: [
    .library(name: "SVGWebView", targets: [ "SVGWebView" ]),
  ],
  
  targets: [
    .target(name: "SVGWebView")
  ]
)
