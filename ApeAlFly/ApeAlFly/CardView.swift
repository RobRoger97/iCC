//
//  ContentView.swift
//  ApeAlFly
//
//  Created by Marco Cucci  on 18/11/21.
//

import SwiftUI

extension Color {
    
}

struct CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.pink)
                .frame(width: 323, height: 559)
                .padding()
            Text("\(card.titolo)")
                .bold()
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(top)
            
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
