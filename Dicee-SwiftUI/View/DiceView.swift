//
//  DiceView.swift
//  Dicee-SwiftUI
//
//  Created by Orlando Moraes Martins on 07/07/23.
//

import SwiftUI

struct DiceView: View {
    let dice: Int
    var body: some View {
    
        Image("dice\(dice)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}


struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(dice: 1)
            .previewLayout(.sizeThatFits)
    }
}
