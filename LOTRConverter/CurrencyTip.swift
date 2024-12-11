//
//  CurrencyTip.swift
//  LOTRConverter
//
//  Created by Bhavin Bhadani on 11/12/24.
//

import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    
    var message: Text? = Text("You can Tap left or right currency to bring up the Select Currency screen.")
    
    var image: Image? = Image(systemName: "hand.tap.fill")
}
