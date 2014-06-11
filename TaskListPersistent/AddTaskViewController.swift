//
//  AddTaskViewController.swift
//  TaskListPersistent
//
//  Created by Leandro on 6/10/14.
//  Copyright (c) 2014 Leandro. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txtName: UITextField!
    @IBOutlet var txtDescription: UITextField!

    @IBAction func btnAddTask(sender: UIButton){
        
        var name: String = txtName.text
        var description: String = txtDescription.text
        
        taskMgr.addTask(name, desc: description)
        
        txtName.text = ""
        txtDescription.text = ""
        
        self.view.endEditing(true);
        
        self.tabBarController.selectedIndex = 0;
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true);
    }
    
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        textField.resignFirstResponder();
        return true;
    }


}
