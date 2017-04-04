//
//  PickFlavorDataSource.swift
//  IceCreamShop
//
//  Created by Joshua Greene on 2/8/15.
//  Copyright (c) 2015 Razeware, LLC. All rights reserved.
//

import UIKit

class PickFlavorDataSource: NSObject, UICollectionViewDataSource {
  
  // MARK: Identifiers
  
  private struct Identifiers {
    static let ScoopCell = "ScoopCell"
  }
  
  // MARK: Instance Variables
  
  var flavors = [Flavor]()
  
  // MARK: Outlets
  
  @IBOutlet var collectionView: UICollectionView!
  
  // MARK: UICollectionViewDataSource
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return flavors.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    return scoopCellAtIndexPath(indexPath: indexPath as NSIndexPath)
  }
  private func scoopCellAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewCell {
   
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Identifiers.ScoopCell, for: indexPath as IndexPath) as! ScoopCell
    configureScoopCell(cell: cell, atIndexPath: indexPath)
    return cell
  }
  
  private func configureScoopCell(cell: ScoopCell, atIndexPath indexPath: NSIndexPath) {
    
    let flavor = flavors[indexPath.row]
    cell.updateWithFlavor(flavor: flavor)
  }
  
}
