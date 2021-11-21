//
//  CardView3.swift
//  ApeAlFly
//
//  Created by Roberta Ruggiero on 21/11/21.
//

import SwiftUI

struct CardView3: View {
    var body: some View {
        ZStack {
            Image("card")
                .resizable()
                .frame(width: 323, height: 559)
            VStack{
                Text("\(third_card.tag)")
                    .bold()
                    .padding(5)
                    .foregroundColor(.white)
                    .background(third_card.color)
                    .cornerRadius(10)
                    .padding(.trailing,20)
                    .offset(x:100,y:30)
                Text("\(third_card.titolo)")
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding([.bottom,.top,.leading,.trailing],40)
                Text("\(third_card.testo)")
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding([.leading,.trailing],40)
                Spacer()
                Image("\(third_card.image)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding([.leading,.trailing],40)
                    .padding(.bottom,70)
            }
            .frame(width: 323, height: 559)
            
            Text("4/8")
                .foregroundColor(.gray)
                .bold()
                .offset(y:240)
            
        }
    }
}

struct CardView3_Previews: PreviewProvider {
    static var previews: some View {
        CardView3()
    }
}
