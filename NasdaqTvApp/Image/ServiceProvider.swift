//
//  ServiceProvider.swift
//  Image
//
//  Created by sacjag on 6/28/17.
//  Copyright © 2017 nasdaq. All rights reserved.
//

import Foundation
import TVServices

class ServiceProvider: NSObject, TVTopShelfProvider {

    override init() {
        super.init()
    }

    // MARK: - TVTopShelfProvider protocol

    var topShelfStyle: TVTopShelfContentStyle {
        // Return desired Top Shelf style.
        return TVTopShelfContentStyle.inset
    }

    var topShelfItems: [TVContentItem] {
        // Create an array of TVContentItems.
        
        
        let item1 = TVContentItem(contentIdentifier: TVContentIdentifier(identifier: "images1.jpeg", container: nil)!)
        
        item1?.imageURL = NSURL(string: "http://www.hdwallpapers.in/walls/nasdaq_stock_market_new_york-HD.jpg") as! URL
        
        return [item1!]
    }

}

