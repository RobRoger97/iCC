//
//  BasicKnow2.swift
//  ApeAlFly
//
//  Created by Roberta Ruggiero on 21/11/21.
//

import SwiftUI

struct BasicKnow2: View {
    var body: some View {
        ZStack {
            Image("card")
                .resizable()
                .frame(width: 323, height: 559)
            VStack{
                Text("\(basic_know_card.tag)")
                    .bold()
                    .padding(5)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.trailing,70)
                    .offset(x:100,y:30)
                Text("\(basic_know_card.titolo)")
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding([.bottom,.top,.leading,.trailing],40)
                Text("\(basic_know_card.testo)")
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding([.leading,.trailing],40)
                Spacer()
                
            }
            .frame(width: 323, height: 559)
            
            Text("6/8")
                .foregroundColor(.gray)
                .bold()
                .offset(y:240)
            
        }
    }
}

struct BasicKnow2_Previews: PreviewProvider {
    static var previews: some View {
        BasicKnow2()
    }
}
