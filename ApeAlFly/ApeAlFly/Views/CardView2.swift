//
//  CardView2.swift
//  ApeAlFly
//
//  Created by Roberta Ruggiero on 21/11/21.
//

import SwiftUI

struct CardView2: View {
    var body: some View {
        ZStack {
            Image("card")
                .resizable()
                .frame(width: 323, height: 559)
            VStack{
                Text("\(second_card.titolo)")
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding([.bottom,.top,.leading,.trailing],40)
                Text("\(second_card.testo)")
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding([.leading,.trailing],40)
                Spacer()
                Image("\(second_card.image)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding([.leading,.trailing],40)
                    .padding(.bottom,70)
            }
            .frame(width: 323, height: 559)
            
            Text("2/10")
                .foregroundColor(.gray)
                .bold()
                .offset(y:240)
            
        }
    }
}

struct CardView2_Previews: PreviewProvider {
    static var previews: some View {
        CardView2()
    }
}
