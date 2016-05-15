//
//  HideKeyboard.swift
//  HideKeyboard
//
//  Created by App Dev Academy.
//  Copyright (c) 2016 App Dev Academy. All rights reserved.
//

import UIKit

/**
    Extension to hide keyboard from current UIViewController
*/
public extension UIViewController {
    
    /**
        Hide keyboard from current UIViewController
    */
    public func hideKeyboard() {
        // Flatten subviews tree
        let subviews = self.view.allSubviews
        
        // Loop through all subviews and find first responder
        for view in subviews {
            if view.isFirstResponder() {
                view.resignFirstResponder()
                return
            }
        }
    }
}

/**
    Extension to flatten tree of subviews for current UIView
*/
public extension UIView {
    
    /**
        Flatten tree of subviews for current UIView
    */
    public var allSubviews: [UIView] {
        get {
            var allSubviews: [UIView] = []
            allSubviews.append(self)
            for subview in self.subviews {
                allSubviews += subview.allSubviews
            }
            return allSubviews
        }
    }
}