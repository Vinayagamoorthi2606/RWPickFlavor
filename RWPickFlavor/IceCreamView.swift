//
//  IceCreamView.swift
//  IceCreamShop
//
//  Created by Joshua Greene on 2/8/15.
//  Copyright (c) 2015 Razeware, LLC. All rights reserved.
//

import UIKit

@IBDesignable

class IceCreamView: UIView {
  
  // MARK: Variables
  
  @IBInspectable var iceCreamTopColor: UIColor = Flavor.vanilla().topColor {
    didSet {
      setNeedsDisplay()
    }
  }
  
  @IBInspectable var iceCreamBottomColor: UIColor = Flavor.vanilla().topColor {
    didSet {
      setNeedsDisplay()
    }
  }
  
  private let coneOuterColor = RGB(red: 184, green: 104, blue: 50)
  private let coneInnerColor = RGB(red: 209, green: 160, blue: 102)
  private let coneLaticeColor = RGB(red: 235, green: 183, blue: 131)
  
  // MARK: View Lifecycle
  
  override func draw(_ frame: CGRect) {

  }
}

extension IceCreamView: FlavorAdapter {
  
  func updateWithFlavor(flavor: Flavor) {
    
    self.iceCreamTopColor = flavor.topColor
    self.iceCreamBottomColor = flavor.bottomColor
    setNeedsDisplay()
  }
}
