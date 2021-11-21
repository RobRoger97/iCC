//
//  ContentView.swift
//  ApeAlFly
//
//  Created by Marco Cucci  on 18/11/21.
//

import SwiftUI

extension Color {
    static let lightPurple = Color(red: 0.853, green: 0.663, blue: 0.859)
    static let bubblePurple = Color(red:202/255,green:158/255,blue:198/255)
}

struct CardView1: View {
    var body: some View {
        ZStack {
            Image("card")
                .resizable()
                .frame(width: 323, height: 559)
            VStack{
                Text("\(first_card.titolo)")
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding([.bottom,.top,.leading,.trailing],40)
                Text("\(first_card.testo)")
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding([.leading,.trailing],40)
                Spacer()
                Image("\(first_card.image)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding([.leading,.trailing],40)
                    .padding(.bottom,70)
            }
            .frame(width: 323, height: 559)
            
            Text("1/10")
                .foregroundColor(.gray)
                .bold()
                .offset(y:240)
            
        }
    }
}

struct CardView1_Previews: PreviewProvider {
    static var previews: some View {
        CardView1()
    }
}
