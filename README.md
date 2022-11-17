<h2>
  SVGWebView
  <img src="https://zeezide.de/img/svgshaper/SVGShaper512.png"
       align="right" width="128" height="128" />
</h2>

![SwiftUI](https://img.shields.io/badge/SwiftUI-orange.svg)
![Swift5.3](https://img.shields.io/badge/swift-5.3-blue.svg)
![macOS](https://img.shields.io/badge/os-macOS-green.svg?style=flat)
![iOS](https://img.shields.io/badge/os-iOS-green.svg?style=flat)
[![Build and Test](https://github.com/ZeeZide/SVGWebView/actions/workflows/swift.yml/badge.svg?branch=main)](https://github.com/ZeeZide/SVGWebView/actions/workflows/swift.yml)

A [SwiftUI](https://developer.apple.com/xcode/swiftui/)
View to display 
[SVGs](https://en.wikipedia.org/wiki/Scalable_Vector_Graphics) 
(Scalable Vector Graphics)
using a
[WKWebView](https://developer.apple.com/documentation/webkit/wkwebview).

Example usage in 
[SVG Shaper for SwiftUI](https://zeezide.de/en/products/svgshaper/)
(it is the View displaying the SVG in the upper left):
![SVG Shaper Screenshot](https://zeezide.de/img/svgshaper/screenshots/Lightmode/cook-xcode-2-light-framed-resized.png)

Note: [SVG Shaper](https://zeezide.de/en/products/svgshaper/)
is for converting SVGs to SwiftUI _source code_ (which then gets compiled).
`SVGWebView` is for displaying SVG resources (e.g. loaded from a
bundle or the web) at _runtime_. They serve different purposes.

## Usage

This is just a single file, the 
[`SVGWebView.swift`](Sources/SVGWebView/SVGWebView.swift) 
is small enough for just copying it to your project.
But it can also be embedded as a SwiftPM package.

*IMPORTANT*: 
On macOS `WKWebView` requires the "Outgoing Connections" (client)
entitlement to operate, w/o it'll show up blank. iOS doesn't seem to require
anything extra.

With iOS Xcode Previews do not work quite right, best to test in a real 
simulator.

### Adding the Package

The package URL is: `https://github.com/ZeeZide/SVGWebView.git`

### Using it in a SwiftUI App

Simply pass the SVG string to the View. For example:

```swift
import SwiftUI
import SVGWebView

struct ContentView: View {

    var body: some View {
        SVGWebView(svg:
            """
            <svg xmlns="http://www.w3.org/2000/svg"
                 viewBox="0 0 100 100">
              <rect x="10" y="10"
                    width="80" height="80"
                    fill="gold" stroke="blue"
                    stroke-width="4" />
            </svg>
            """
        )
        .frame(width: 300, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {

    static var previews: some View {
        ContentView()
    }
}
```

### Who

SVGWebView is brought to you by [ZeeZide](https://zeezide.de).
We like feedback, GitHub stars, cool contract work, 
presumably any form of praise you can think of.
