//
//  BankTestsUnitTests.swift
//  BankTestsUnitTests
//
//  Created by Erasmo J.F Da Silva on 22/03/23.
//

import XCTest
@testable import Bank

final class BankUnitTests: XCTestCase {
    var login = LoginViewController()
    
    override func setUp() {
    }

    override func tearDown() {
        
    }

    func testWhenUserNameAndPasswordIsMatch_ShouldReturnSuccess() {
        XCTAssertTrue((login.username != nil), "Maya")
        XCTAssertTrue((login.password != nil), "Inocencia")
    }
    
    func testWhenUserNameAndPasswordIsEmpty_ShouldReturnTrue() {
 
        XCTAssertTrue((login.username?.isEmpty) != nil, "Username / password cannot be blank")
        XCTAssertTrue((login.password?.isEmpty) != nil, "Username / password cannot be blank")
    }

}
