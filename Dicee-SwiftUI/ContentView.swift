//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Orlando Moraes Martins on 07/07/23.
//

import SwiftUI

struct ContentView: View {
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
                    DiceView(dice: 1)
                    DiceView(dice: 4)
                }
                .padding(.horizontal)
                
                Spacer()
                
                Button(action: {
                    //Action
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

struct DiceView: View {
    let dice: Int
    var body: some View {
    
        Image("dice\(dice)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
