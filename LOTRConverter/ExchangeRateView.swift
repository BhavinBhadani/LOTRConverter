//
//  ExchangeRateView.swift
//  LOTRConverter
//
//  Created by Bhavin Bhadani on 08/12/24.
//

import SwiftUI

struct ExchangeRateView: View {
    let leftImage: ImageResource
    let rightImage: ImageResource
    let exchangeText: String
    
    var body: some View {
        HStack {
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            Text(exchangeText)
            
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRateView(leftImage: .goldpiece, rightImage: .goldpenny, exchangeText: "One Gold Piece = 4 Gold Pennies")
}
