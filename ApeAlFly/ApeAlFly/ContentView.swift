//
//  ContentView.swift
//  ApeAlFly
//
//  Created by Marco Cucci  on 18/11/21.
//

import SwiftUI

//Color extension
extension Color {
    static let lightPurple = Color(red: 0.853, green: 0.663, blue: 0.859)
}

struct ContentView: View {
@State var showOnboarding: Bool = true
    
    var body: some View {
    NavigationView {
            
        
          HomeView()
//        ZStack {
//            Text("Home")
//                .font(.largeTitle)
//            }
//        .background(Image("homeBackground")
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .scaleEffect(6))
//        .ignoresSafeArea()
        }
        .fullScreenCover(isPresented: $showOnboarding, content: { OnboardingView(showOnboarding: $showOnboarding)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
