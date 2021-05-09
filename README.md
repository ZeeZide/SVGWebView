<h2>
  SVGWebView
  <img src="https://zeezide.de/img/svgshaper/SVGShaper512.png"
       align="right" width="128" height="128" />
</h2>

A [SwiftUI](https://developer.apple.com/xcode/swiftui/)
View to display 
[SVGs](https://en.wikipedia.org/wiki/Scalable_Vector_Graphics) 
(Scalable Vector Graphics)
using a
[WKWebView](https://developer.apple.com/documentation/webkit/wkwebview).

Example use in 
[SVG Shaper for SwiftUI](https://zeezide.de/en/products/svgshaper/):
![SVG SHaper Screenshot](https://pbs.twimg.com/media/E0ydNH9XEAQ-USY?format=png)

Note: [SVG Shaper](https://zeezide.de/en/products/svgshaper/):
is for converting SVGs to SwiftUI _source code_ (which then gets compiled).
SVGWebView is for displaying SVG resources (e.g. loaded from a
bundle or the web) at _runtime_. They serve different purposes.

## Usage

This is just a single file, the 
[`SVGWebView.swift`](Sources/SVGWebView/SVGWebView.swift) 
is small enough for just copying it to your project.
But it can also be embedded as a SwiftPM package.

### Adding the Package

The package URL is: `https://github.com/ZeeZide/SVGWebView.git`

### Using it in a SwiftUI App

Simple pass the SVG string to the View. For example:

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
