//
//  ViewController.swift
//  iQuiz-Part1
//
//  Created by Timothy Luong on 5/5/16.
//  Copyright © 2016 Timothy Luong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let quizzess = [
        ["Mathematics", "That thing where you use numbers.", "math.jpg"],
        ["Marvel Super Heroes", "That thing where you have heroes.", "marvel.jpeg"],
        ["Science", "That thing where you have everything.", "science.png"]
        
    ]
    
    @IBOutlet weak var quizTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quizzess.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("quizCell", forIndexPath: indexPath)
                as! quizCell
            let quiz = quizzess[indexPath.row]
            cell.cellTitle = quiz[0]
            cell.descript = quiz[1]
            cell.imageSource?.image = UIImage(named: quiz[2])
            return cell
    }
    
    @IBAction func settingsAlert(sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Alert", message: "Settings go here", preferredStyle: UIAlertControllerStyle.Alert)
        let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        alert.addAction(ok);
        self.presentViewController(alert, animated: true, completion: nil)
    }
}

