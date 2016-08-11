# Demo Swift ObjectMapper

This demonstration shows:

  * The [Swift](http://swift.org) programming language with
    [Apple](http://apple.com)
    [iOS](http://www.apple.com/ios/)
    [Xcode](https://developer.apple.com/xcode/)

  * How to use the [ObjectMapper](https://github.com/Hearst-DD/ObjectMapper) tool 
    that converts between [JSON](http://json.org) and 
    [models](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller)

This README describes how to create the project, if you want to try doing it yourself.

To learn more about Swift and ObjectMapper, see the official documentation for [ObjectMapper](https://github.com/Hearst-DD/ObjectMapper)

## How to create the project

1. Launch Xcode and create a new project. We call ours "Demo Swift ObjectMapper".

  * Need help? See our repo [demo_swift_hello_world](https://github.com/joelparkerhenderson/demo_swift_hello_world).

1. Create a simple way to print some text to the screen, such as a text view with an IBOutlet named "demoTextView".

  * Need help? See our repo [demo_swift_text_view](https://github.com/joelparkerhenderson/demo_swift_text_view).

1. Add ObjectMapper to the project.

  * To add ObjectMapper as a dependency, we prefer using Carthage.

  * If you prefer, you can add it by using a dynamic framework or using Cocoapods.

## Create a model class

1. Create a directory named "Models".

1. Create a model called "Item" that implements the ObjectMappable interface:

        import Foundation
        import ObjectMapper

        class Item: Mappable {

          var name: String?

          // Implement Mappable
          required init?(_ map: Map) {
          }

          // Implement Mappable
          func mapping(map: Map) {
            name <- map["name"]
          }

        }

## Instantiate a model

1. Edit `ViewController.swift`.

1. Add simple code to create a model object, then print some output to the screen.

        import UIKit
        import ObjectMapper

        class ViewController: UIViewController {

          @IBOutlet weak var demoTextView: UITextView!

          override func viewDidLoad() {
            super.viewDidLoad()
            let item = Mapper<Item>().map("{\"name\":\"Demo Item\"}")
            demoTextView.text = item!.name!
          }
		  …
		}

1. Run the app. The screen shows the item name, which is "Demo Item".

## Tracking

* Package: demo_swift_objectmapper
* Version: 1.0.0
* Created: 2016-05-30
* Updated: 2016-05-30
* License: GPL
* Contact: Joel Parker Henderson (joel@joelparkerhenderson.com)
