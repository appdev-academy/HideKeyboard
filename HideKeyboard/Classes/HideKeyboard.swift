//
//  HideKeyboard.swift
//  HideKeyboard
//
//  Created by App Dev Academy.
//  Copyright (c) 2016 App Dev Academy. All rights reserved.
//

import UIKit

// MARK: - Extension to hide keyboard from current UIViewController
public extension UIViewController {
  
  /// Hide keyboard from current UIViewController
  @objc func hideKeyboard() {
    // Flatten subviews tree
    let subviews = view.allSubviews
    
    // Loop through all subviews and find first responder
    for view in subviews {
      if view.isFirstResponder {
        view.resignFirstResponder()
        return
      }
    }
  }
}

// MARK: - Extension to flatten tree of subviews for current UIView
public extension UIView {
  
  /// Flatten tree of subviews for current UIView
  var allSubviews: [UIView] {
    get {
      var allSubviews: [UIView] = []
      allSubviews.append(self)
      for subview in subviews {
        allSubviews += subview.allSubviews
      }
      return allSubviews
    }
  }
}
