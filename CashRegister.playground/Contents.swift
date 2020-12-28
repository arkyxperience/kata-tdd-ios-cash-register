
import Foundation
import XCTest

// red - green - refactor


/*

 • Write an initializer that accepts availableFunds.
 • Write a method for addItem that adds to a transaction.
 • Write a method for acceptPayment.
 
 */


class CashRegister {
    
    var availableFunds: Decimal = 0
    var transactionTotal: Decimal = 0

    init(availableFunds: Decimal) {
        self.availableFunds = availableFunds
    }
    
    func addItem(itemCost: Decimal) {
        transactionTotal = itemCost
    }
}

// test{SUT}_{setup}{outcome}
class CashRegisterTests: XCTestCase {
    
    var availableFunds: Decimal!
    var sut: CashRegister!
    
    override func setUp() {
        super.setUp()
        availableFunds = 100
        sut = CashRegister(availableFunds: availableFunds)
    }
    
    override func tearDown() {
        availableFunds = nil
        sut = nil
        super.tearDown()
    }
    
    func testInitWithAvaialbleFunds_SetAvailableFunds() {
        XCTAssertEqual(sut.availableFunds, availableFunds)
    }

    func testAddItem_oneItem_addsCostToTransactionTotal() {
        let itemCost = Decimal(42)
        
        sut.addItem(itemCost: itemCost)
        
        XCTAssertEqual(sut.transactionTotal, 58)
    }
}


CashRegisterTests.defaultTestSuite.run()









