//
//  CurrencyFormatterTests.swift
//  BankUnitTests
//
//  Created by Erasmo J.F Da Silva on 20/04/23.
//

import Foundation
import XCTest
@testable import Bank

class Test: XCTestCase {
    var formatter: CurrencyFormatter!
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func testBreakDollarsIntoCents() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "$ 929.466")
        XCTAssertEqual(result.1, "23")
    }
    
    func testDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(929466.23)
        XCTAssertEqual(result, "R$ 929.466,23")
    }
    
    func testZeroDollarsFormatted() {
        let resul = formatter.dollarsFormatted(0.00)
        XCTAssertEqual(resul, "R$ 0,00")
    }
    
    func testDollarsFormatedWhitCurrencySymbol() throws {
        let locale = Locale.current
        let currencySymbol = locale.currencySymbol!
        
        let result = formatter.dollarsFormatted(929466.23)
        print("\(currencySymbol)")
        XCTAssertEqual(result, "\(currencySymbol) 929.466,23")
    }
}
