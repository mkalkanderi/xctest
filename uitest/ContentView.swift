//-
//  ContentView.swift
//  uitest
//
//  Created by Mohd on 28/8/21.
//

import SwiftUI

struct ContentView: View {
    
    //MARK:- var
    @State private var firstCard = "card2"
    @State private var secondCard = "card2"
    @State private var thirdCard = "card2"
    
    
    @State private var score = 0
   
    
    //MARK:- body
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
            
            VStack{
                Spacer()
                Text("Slots!")
                Spacer()
                HStack{
                    Spacer()
                    Image(firstCard)
                    Spacer()
                    Image(secondCard)
                    Spacer()
                    Image(thirdCard)
                    Spacer()
                    
                }.padding()
                Spacer()
                Button(action: {
                    
                    let firstRand = Int.random(in: 2...14)
                    let secondRand = Int.random(in: 2...14)
                    let thirdRand = Int.random(in: 2...14)
                    //update card
                    firstCard = "card" + String(firstRand)
                    secondCard = "card" + String(secondRand)
                    thirdCard = "card" + String(thirdRand)
                    
                    
                    
                    //update score
                    if firstRand == secondRand && firstRand == thirdRand {
                        score += 5000
                    } else {
                        score -= 10
                    }
                    
                    
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                HStack{
                    Text("Score: \(score)")
                }
                
                Spacer()
                
                
            }
        }
    }
}

//MARK:- Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
