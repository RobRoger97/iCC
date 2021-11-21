//
//  TotalView.swift
//  ApeAlFly
//
//  Created by Roberta Ruggiero on 21/11/21.
//

import Foundation
import SwiftUI

struct DeckView: View {
    var body: some View {
        NavigationView{
        ZStack{
            Image("circle")
                .resizable()
//                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.top)
        TabView{
            CardView1()
            CardView2()
            BasicKnow1()
            CardView3()
            CardView4()
            BasicKnow2()
            CardView5()
            CardView6()
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
        .navigationBarTitle("Decks")
        .navigationBarItems(leading: Button(action: {}, label: {Text("< Back")}))
        }
}
}
struct DeckView_Previews: PreviewProvider {
    static var previews: some View {
        DeckView()
    }
}
