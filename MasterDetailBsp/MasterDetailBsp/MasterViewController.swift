//
//  MasterViewController.swift
//  MasterDetailBsp
//
//  Created by Christian Bleske on 20.01.15.
//  Copyright (c) 2015 Christian Bleske. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    let zitate = ["Heimisch in der Welt wird man nur durch Arbeit. Wer nicht arbeitet, ist heimatlos. - Berthold Auerbach",
        "Gib blind, nimm sehend. - Dt. Sprichwort", "Die kürzesten Wörter, nämlich 'ja' und 'nein' erfordern das meiste Nachdenken. - Pythagoras von Samos", "Es gehört oft mehr Mut dazu, seine Meinung zu ändern, als ihr treu zu bleiben. - Friedrich Hebbel"]

    var objects = [AnyObject]()

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.navigationItem.leftBarButtonItem = self.editButtonItem()

        //let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
        //self.navigationItem.rightBarButtonItem = addButton
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    func insertNewObject(sender: AnyObject) {
//        objects.insert(NSDate(), atIndex: 0)
//        let indexPath = NSIndexPath(forRow: 0, inSection: 0)
//        self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
//    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                //let object = objects[indexPath.row] as NSDate
                let zitat = zitate[(indexPath as NSIndexPath).row] as String
            (segue.destination as! DetailViewController).detailItem = zitat as AnyObject//object
            }
        }
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return zitate.count //objects.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell

        //let object = objects[indexPath.row] as NSDate
        let zitat = zitate[(indexPath as NSIndexPath).row] as String
        cell.textLabel!.text = zitat //object.description
        //cell.detailTextLabel!.text = "Platz für zusätzliche Informationen" Cell Type von Basic auf Subtitle
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

//    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        if editingStyle == .Delete {
//            objects.removeAtIndex(indexPath.row)
//            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
//        } else if editingStyle == .Insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
//        }
//    }


}

