//
//  ViewController.swift
//  CustomCellBsp
//
//  Created by Christian Bleske on 29.01.15.
//  Copyright (c) 2015 Christian Bleske. All rights reserved.
//

import UIKit

struct InfoBit {
    var Info1: String
    var Info2: String
    var Info3: String
}

class ViewController: UITableViewController { //, UITableViewDataSource  { <- in Swift 2.0 nicht mehr erforderlich

    var InfoBits: [InfoBit] = [
        InfoBit(Info1: "Info 1", Info2: "Text 1.1", Info3: "Text 1.2"),
        InfoBit(Info1: "Info 2", Info2: "Text 2.1", Info3: "Text 2.2"),
        InfoBit(Info1: "Info 3", Info2: "Text 3.1", Info3: "Text 3.2"),
        InfoBit(Info1: "Info 4", Info2: "Text 4.1", Info3: "Text 4.2")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            //var cell = tableView.dequeueReusableCellWithIdentifier("cell") as BspCell
            let cell = tableView.dequeueReusableCell(withIdentifier: "BspCell", for: indexPath) as! BspCell

            cell.Label1.text = InfoBits[(indexPath as NSIndexPath).row].Info1
            cell.Label2.text = InfoBits[(indexPath as NSIndexPath).row].Info2
            cell.Label3.text = InfoBits[(indexPath as NSIndexPath).row].Info3
            return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return InfoBits.count
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

