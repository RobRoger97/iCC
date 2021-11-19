//
//  ContentView.swift
//  ApeAlFly
//
//  Created by Marco Cucci  on 18/11/21.
//

import SwiftUI

extension Color {
    static let lightPurple = Color(red: 0.853, green: 0.663, blue: 0.859)
}

struct CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.gray)
                .frame(width: 323, height: 559)
                .padding()
            VStack{
                Text("\(first_card.titolo)")
                                .bold()
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding()
                Text("\(first_card.testo)")
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                Image("\(first_card.image)")
            }
            
            
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
