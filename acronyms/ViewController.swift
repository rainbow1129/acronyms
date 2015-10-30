//
//  ViewController.swift
//  acronyms
//
//  Created by Haihong Wang on 10/29/15.
//  Copyright © 2015 Haihong Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var search: UISearchBar!
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var responseLabel: UILabel!
    
    
    var acronyms: [String : String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        search.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
        
        acronyms = [
            "AI": "Audience Insights",
            "AM": "Ads Manager",
            "API": "Application Programming Interface",
            "ASL": "Account Spending Limit",
            "AYMT": "Actions You May Take",
        ]
        
        var input = "AI"
        
        print(acronyms[input])
        
        /*if acronyms[input] != nil {
            var acronym = acronyms[input]!
            
            print(acronym)
        } else {
            print("I don't know that acronym")
        }*/
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didCheck(sender: AnyObject) {
        //var searchText = searchTextField.text?.lowercaseString
        responseLabel.text = acronyms[ search .text!]
        
    }

}

