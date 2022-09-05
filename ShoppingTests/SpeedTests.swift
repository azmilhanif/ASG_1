import XCTest

class J_SpeedTests: XCTestCase {

    
    func testHalfPriceA(){
        let testProducts = [P.🍾,P.🍾,P.🍾,P.🍾]
        XCTAssertTrue(Helper.shared.offer(HalfPriceOffer(), hasFasterAppliesMethodWith: testProducts), "HalfPriceOffer 'appliesTo' method should be quicker than its 'discountFrom' method")
    }
    
    func testBOGOF(){
        let testProducts = [P.coke, P.dietcoke, P.dietcoke, P.cokezero]
        XCTAssertTrue(Helper.shared.offer(BuyOneGetOneFreeOffer(), hasFasterAppliesMethodWith: testProducts),"BOGOFOffer 'appliesTo' method should be quicker than the 'discountFrom' method")
    }
    
    func testBuyTwoGetThirdFree(){
        let testProducts = [P.dove, P.dove, P.dove, P.lynx, P.lynx, P.lynx]
        XCTAssertTrue(Helper.shared.offer(BuyTwoGetThirdFreeOffer(), hasFasterAppliesMethodWith: testProducts), "B2G3F 'appliesTo' method should be quicker than its 'discountFrom' method")
    }
    
   
    
    
    func testWaterPaper(){
        let testProducts = [P.📰,P.📰,P.📰,P.📰,P.📰,P.📰,P.📰,P.💧]
        XCTAssertTrue(Helper.shared.offer(FreeWaterWithNewspaperOffer(), hasFasterAppliesMethodWith: testProducts), "B2G3F 'appliesTo' method should be quicker than its 'discountFrom' method")
    }
    
    
    
    func testFreeSauce(){
        let testProducts = [P.mayo, P.ketchup]
        XCTAssertTrue(Helper.shared.offer(FreeTableSauceWithMeatOffer(), hasFasterAppliesMethodWith: testProducts))
    }
    
    
    func testVegOffer(){
        let testProducts = [P.mushrooms,P.mushrooms,P.mushrooms]
        XCTAssertTrue(Helper.shared.offer(TwentyPercentOffThreePacksOfVegOffer(), hasFasterAppliesMethodWith: testProducts))
    }

   

    
   

}
