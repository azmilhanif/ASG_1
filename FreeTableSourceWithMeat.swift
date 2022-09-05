//
//  FreeTableSourceWithMeat.swift
//  ShoppingTask
//
//  Created by Andrew Muncey on 22/02/2022.
//  Copyright © 2022 University of Chester. All rights reserved.
//

import Foundation


class FreeTableSauceWithMeatOffer : TriggerMultiBuy {
    var triggerProductIds: Set<Int>
    
    var discountableProductIds: Set<Int>
    
    var quantityFree: Int
    
    var name: String
    
    var quantityPaid: Int
    
  var productIds: Set<Int>
    
    
    init(){
        name = "Three meats for £10"
        triggerProductIds = [301,302,303,304,305,306]
        discountableProductIds = [54321, 54322]
        quantityPaid = 3;
        quantityFree = 2;
        productIds = triggerProductIds.union(discountableProductIds)//todo remove ISP violation
    }
    
    func applies(to purchases: [Product]) -> Bool {
    
        return false
    }
    
    func discount(for purchases: [Product]) -> Int {
       
        return 0
        
    }
    
}
