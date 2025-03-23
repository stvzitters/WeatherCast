//
//  Date+Utils.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/23.
//

import Foundation

public extension Date {
    var weekday: String {
        formatted(.dateTime.weekday(.wide))
    }
}
