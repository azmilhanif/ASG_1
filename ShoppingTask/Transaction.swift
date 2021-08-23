class Transaction {
    
    var couponsEnabled = false
    var items = [Product]()
    
    func priceBeforeDiscounts() -> Int{
        
        

        //sum up the price of all items
        return 0
    }
    
    func discount() -> Int{
        
        let discounts = Discounter(couponsEnabled: couponsEnabled).offerDiscounts(list: items)
        var total = 0;
        for discount in discounts {
            total += discount.valueInPence;
        }
        return  total;
    }
    
    func finalPrice() -> Int{
        
        
        
        return 0
    }
    
    
}
