//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Orlando Moraes Martins on 07/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var leftDiceNumber = Int.random(in: 1...6)
    @State private var  rightDiceNumber = Int.random(in: 1...6)
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
           
            VStack {
                Spacer()
                Image("diceeLogo")
                Spacer()
                
                HStack{
                    DiceView(dice: leftDiceNumber)
                    DiceView(dice: rightDiceNumber)
                }
                .padding(.horizontal)
                
                Spacer()
                
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                })
                 {
                   Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)

                }
                .background(Color.red)
                .clipShape(Capsule())
                                
                Spacer()
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
