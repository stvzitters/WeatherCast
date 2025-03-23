//
//  JSONDecoder+Utils.swift
//  WCIntegration
//
//  Created by Shaun van Zitters on 2025/03/23.
//

import Foundation

extension JSONDecoder {
    func withDateFormat(_ dateFormat: String) -> JSONDecoder {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        dateDecodingStrategy = .formatted(dateFormatter)
        return self
    }
}
