//
//  ViewController.swift
//  POP UPS
//
//  Created by Kyle Lee on 7/9/17.
//  Copyright © 2017 Kyle Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
    @IBAction func onAlertTapped(_ sender: Any) {
        let alert = UIAlertController(title: "blah", message: "meep", preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.placeholder = "MY PLACEHOLDER HERE"
            textField.keyboardType = .numberPad
        }
        
        let action1 = UIAlertAction(title: "My Action 1", style: .default) { (action) in
            print("THIS IS ACTION 1")
            print(alert.textFields?.first?.text)
        }
        let action2 = UIAlertAction(title: "My Action 2", style: .cancel) { (action) in
            print("THIS IS ACTION 2")
        }
        let action3 = UIAlertAction(title: "My Action 3", style: .destructive) { (action) in
            print("DELETING ALL YOUR DATA")
        }
        alert.addAction(action3)
        alert.addAction(action1)
        alert.addAction(action2)
        present(alert, animated: true, completion: nil)
        
        
    }
    
    
    
    @IBAction func onSheetTapped(_ sender: Any) {
        let sheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let action1 = UIAlertAction(title: "My Action 1", style: .default) { (action) in
            print("THIS IS ACTION 1")
        }
        let action2 = UIAlertAction(title: "My Action 2", style: .cancel, handler: nil)
        let action3 = UIAlertAction(title: "BAD STUFF", style: .destructive) { (_) in
            print("YOU HAVE DELETED YOUR ACCOUNT")
        }
        sheet.addAction(action3)
        sheet.addAction(action1)
        sheet.addAction(action2)
        present(sheet, animated: true, completion: nil)
        
    }
    
    
    
    
    
    
}

