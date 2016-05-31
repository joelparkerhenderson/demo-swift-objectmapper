import UIKit
import ObjectMapper

class ViewController: UIViewController {
  
  @IBOutlet weak var demoTextView: UITextView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let item = Mapper<Item>().map("{\"name\":\"Demo Item\"}")
    demoTextView.text = item!.name!
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

}

