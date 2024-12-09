//
//  CurrencyIcon.swift
//  LOTRConverter
//
//  Created by Bhavin Bhadani on 09/12/24.
//

import SwiftUI

struct CurrencyIcon: View {
    let currencyImage: ImageResource
    let currenyName: String

    var body: some View {
        ZStack(alignment: .bottom) {
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            Text(currenyName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
        }
        .padding(3)
        .frame(width: 100, height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyIcon(currencyImage: .copperpenny, currenyName: "Copper Penny")
}
