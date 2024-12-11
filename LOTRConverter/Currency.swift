//
//  Currency.swift
//  LOTRConverter
//
//  Created by Bhavin Bhadani on 10/12/24.
//

import SwiftUI

enum Currency: Double, CaseIterable, Identifiable {
    case copperPenny = 6400
    case silverPenny = 64
    case silverPiece = 16
    case goldPenny = 4
    case goldPiece = 1
    
    var id: Currency { self }
    
    var image: ImageResource {
        switch self {
        case .copperPenny: return .copperpenny
        case .silverPenny: return .silverpenny
        case .silverPiece: return .silverpiece
        case .goldPenny: return .goldpenny
        case .goldPiece: return .goldpiece
        }
    }
    
    var name: String {
        switch self {
        case .copperPenny:
            "Copper Penny"
        case .silverPenny:
            "Silver Penny"
        case .silverPiece:
            "Silver Piece"
        case .goldPenny:
            "Gold Penny"
        case .goldPiece:
            "Gold Piece"
        }
    }
    
    func convert(_ amount: String, to: Currency) -> String {
        guard let doubleAmount = Double(amount) else {
            return ""
        }
        let convertedAmount = (doubleAmount / self.rawValue) * to.rawValue
        return String(format: "%.2f", convertedAmount)
    }
}
