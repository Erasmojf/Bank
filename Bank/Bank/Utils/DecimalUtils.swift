//
//  DecimalUtils.swift
//  Bank
//
//  Created by Erasmo J.F Da Silva on 17/04/23.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
