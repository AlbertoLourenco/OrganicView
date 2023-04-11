![cover](https://raw.githubusercontent.com/AlbertoLourenco/OrganicView/master/github-assets/cover.png)

A simple view with organic animation.

## How to use

First of all, you'll need to create a `MorphConfig` object to set all of animation attributes.

```swift
let config = MorphConfig(size: CGSize(width: view.bounds.width + 200,
                                      height: view.bounds.height + 200),
                                 duration: 10,
                                 rotationEnabled: true,
                                 colorsStart: colorsStart,
                                 colorsEnd: colorsEnd,
                                 backgroundColor: .clear)
```

And after that, you can implement the animation using Storybord or view code.

- Storyboard:

```swift
@IBOutlet private weak var vwOrganic: OrganicView!
...
self.vwOrganic.apply(config: config)
```

- View code:

```swift
let vwOrganic = OrganicView()
vwOrganic.apply(config: config)
view.addSubview(vwOrganic)
```

## Requirements

```
- iOS 10+
- Swift 5
- Xcode 11
```

## This project uses:

```
- UIKit
- QuartzCore
```

## In action

![preview](https://github.com/AlbertoLourenco/OrganicView/blob/master/github-assets/preview-1.gif?raw=true)
![preview](https://github.com/AlbertoLourenco/OrganicView/blob/master/github-assets/preview-2.gif?raw=true)
