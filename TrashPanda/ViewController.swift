//
//  ViewController.swift
//  TrashPanda
//
//  Created by Jackson Didat on 9/9/17.
//  Copyright © 2017 jdidat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var asscake: UILabel!
    
    var toggle = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func post(_ sender: UIButton) {
        if (toggle) {
            asscake.text = "titcake"
        }
        else {
            asscake.text = "asscake"
        }
        toggle = !toggle 
    }
    
}

