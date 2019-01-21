//
//  FirstViewController.swift
//  Days Matter
//
//  Created by Soft Dev on 1/9/19.
//  Copyright © 2019 Lily Guo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func addTargetName(_ sender: UIButton) {
        performSegue(withIdentifier: "addTargetDate", sender: nil)
    }
    
   // @IBOutlet weak var tableView: UITableView!
    
//    var listOfEvents: [EventsToDisplay] {
//        let eventName =
//    }
    
//    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        <#code#>
//    }
    
//    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell(style: UITableViewCell.default, reuseIdentifier: "cell")
//    }
    
    
    
    

}

