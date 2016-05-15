//
//  ViewController.swift
//  HideKeyboard
//
//  Created by App Dev Academy on 05/15/2016.
//  Copyright (c) 2016 App Dev Academy. All rights reserved.
//

import UIKit
import HideKeyboard

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func hideKeyboardPressed() {
        self.hideKeyboard()
    }
}