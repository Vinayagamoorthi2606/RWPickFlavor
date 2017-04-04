//
//  Flavor.swift
//  IceCreamShop
//
//  Created by Joshua Greene on 1/16/15.
//  Copyright (c) 2015 Razeware, LLC. All rights reserved.
//

import UIKit

struct Flavor {
  
  // MARK: Instance Variables
  
  let name: String
  let topColor: UIColor
  let bottomColor: UIColor
  
  // MARK: Static Methods
  
  static func vanilla() -> Flavor {
    return Flavor(name:"Vanilla", topColor:RGB(red: 251, green: 248, blue: 236), bottomColor:RGB(red: 230, green: 215, blue: 171))
  }
  
  static func chocolate() -> Flavor {
    return Flavor(name:"Chocolate", topColor:RGB(red: 203, green: 140, blue: 58), bottomColor:RGB(red: 107, green: 46, blue: 11))
  }
  
  // MARK: Initializers
  
  init(name: String, topColor: UIColor, bottomColor: UIColor) {
    self.name = name
    self.topColor = topColor
    self.bottomColor = bottomColor
  }
  
  init?(dictionary: [String: String]) {
    
    let topColorString = dictionary["topColor"]
    
    if let topColor = UIColor.RGBAColorFromString(string: topColorString) {
      self.topColor = topColor
      
    } else {
      return nil
    }
    
    let bottomColorString = dictionary["bottomColor"]
    
    if let bottomColor = UIColor.RGBAColorFromString(string: bottomColorString) {
      self.bottomColor = bottomColor
      
    } else {
      return nil
    }
    
    if let name = dictionary["name"] {
      self.name = name
      
    } else {
      return nil
    }
  }
}

protocol FlavorAdapter {
  
  func updateWithFlavor(flavor: Flavor)
}
