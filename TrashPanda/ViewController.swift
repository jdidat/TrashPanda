//
//  ViewController.swift
//  TrashPanda
//
//  Created by Jackson Didat on 9/9/17.
//  Copyright © 2017 jdidat. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var data = [String]()
    @IBOutlet weak var postTable: UITableView!
    @IBOutlet weak var inputText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func post(_ sender: UIButton) {
        if let inputString = inputText.text {
            data.append(inputString)
            self.postTable.reloadData()
            postTable.resignFirstResponder()
        }
    }
    
    
    //TABLE METHODS
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = postTable.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let row = indexPath.row
        cell.textLabel?.text = data[row]
        
        return cell
    }
}

