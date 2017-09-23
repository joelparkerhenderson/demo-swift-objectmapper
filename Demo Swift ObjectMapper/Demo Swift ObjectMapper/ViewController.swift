//
//  ViewController.swift
//  Demo Swift ObjectMapper
//
//  Created by Joel on 9/23/17.
//  Copyright © 2017 JoelParkerHenderson.com. All rights reserved.
//

import UIKit
import ObjectMapper

class ViewController: UIViewController {

    @IBOutlet weak var demoTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let item = Mapper<Item>().map(JSONString: "{\"name\":\"Demo Item\"}")
        demoTextView.text = item!.name!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
