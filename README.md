# Demo Swift ObjectMapper

<img src="README.png" alt="JSON" width="244" height="80"/>

This demonstration shows:

  * The [Swift](http://swift.org) programming language with
    [Apple](http://apple.com)
    [Xcode](https://developer.apple.com/xcode/)
    [iOS](http://www.apple.com/ios/)

  * How to use the [ObjectMapper](https://github.com/Hearst-DD/ObjectMapper) tool 
    that converts between [JSON](http://json.org) and 
    [models](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller)

This README describes how to create the demo.


## Start

To use this demo, you can clone this repo, or you can use this README to create your own project.

If you clone this repo, then be aware that there are multiple git branches, so pick the one you want.

  * swift-4-xcode-9: Swift version 4, Xcode version 9, iOS version 11.

  * swift-3-xcode-8: Swift version 3, Xcode version 8, iOS version 10.


## Create the project

Launch Xcode and create a new Xcode project. 

  * Use iOS template "Single View Application" and Product Name "Demo Swift ObjectMapper"

  * [Help](doc/setup/create_a_new_xcode_project.md)
        
Create a simple way to print some text to the screen.

  * We create a text view object and IBOutlet named "demoTextView".

  * [Help](doc/setup/create_a_text_view.md)

Add ObjectMapper to the project. We suggest using Carthage or Cocoapods.

  * Carthage `Cartfile`:

    github "Hearst-DD/ObjectMapper" ~> 2.2

  * [Help](doc/setup/add_carthage_frameworks.md)


## Create a model class

Create a new group named "Models".

Create a new iOS Swift file named "Item.swift", and when you save it, also create a new disk folder named "Models".

Edit `Item.swift`.

```swift
import Foundation
import ObjectMapper

class Item: Mappable {

  var name: String?

  // Implement Mappable
  required init?(map: Map) {
  }

  // Implement Mappable
  func mapping(map: Map) {
    name <- map["name"]
  }

}
```


## Instantiate a model

Edit `ViewController.swift`.

Add simple code to create a model object, then print some output to the screen.

```swift
import UIKit
import ObjectMapper

class ViewController: UIViewController {

  @IBOutlet weak var demoTextView: UITextView!

  override func viewDidLoad() {
    super.viewDidLoad()
    let item = Mapper<Item>().map(JSONString: "{\"name\":\"Demo Item\"}")
    demoTextView.text = item!.name!
  }
  …
```


## Run

Run the app. 

The Simulator screen shows the item name, which is "Demo Item".

Congratulations, you're successful!


## Tracking

* Package: demo_swift_objectmapper
* Version: 3.0.0
* Created: 2016-05-30
* Updated: 2017-09-22
* License: BSD, GPL, MIT
* Contact: Joel Parker Henderson (http://joelparkerhenderson.com)
