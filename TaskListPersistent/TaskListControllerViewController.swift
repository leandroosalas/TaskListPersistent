//
//  TaskListControllerViewController.swift
//  TaskListPersistent
//
//  Created by Leandro on 6/10/14.
//  Copyright (c) 2014 Leandro. All rights reserved.
//

import UIKit

class TaskListControllerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var table:UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Returning to view
    override func viewWillAppear(animated: Bool) {
        table.reloadData();
        
    }
    

    //UItableview Delegate
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!){
        
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            
            taskMgr.removeTask(indexPath.row);
            
            table.reloadData();
            
        }
        
    }
    
    //TableViewDatasource
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        return taskMgr.tasks.count;
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "TaskList");
        
        cell.text = taskMgr.tasks[indexPath.row].name;
        cell.detailTextLabel.text = taskMgr.tasks[indexPath.row].description;
        
        return cell;
        
    }

    

}
