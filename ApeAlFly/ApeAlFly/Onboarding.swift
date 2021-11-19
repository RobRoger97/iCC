//
//  SwiftUIView.swift
//  ApeAlFly
//
//  Created by Ramona Ruoppo on 18/11/21.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var showOnboarding: Bool
    
    var body: some View {
        TabView {
            PageView()
            
            PageView2()
            
            PageView3()
            
            PageView4()
            
            PageView5()
            
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .onAppear {
              setupAppearance()
            }
          }
          
          func setupAppearance() {
            UIPageControl.appearance().currentPageIndicatorTintColor = .black
            UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
          }
        }

//First onboarding page
struct PageView: View {
    var body: some View {
        VStack {
            Text("Welcome to iCanCreate")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.bottom, 1.0)
                
            Text("here you can enhance your creativity")
                .font(.headline)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
        }
        .background(
        Image("background")
            .scaleEffect(2)
        )
    }
}

//Second onboarding page
struct PageView2: View {
    var body: some View {
        VStack {
            HStack{
                Image("pinklines")
                    .scaleEffect(1.2)
                    .offset(x: -3, y:-25)
                
                Text("CHOOSE THE DECK")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                    .offset(x: -5)
            }
            Text("based on the level you are \n interested to practice on")
                .font(.headline)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
            
            Image("Handspink")
                .resizable()
                .scaledToFit()
                .foregroundColor(.teal)
                .scaleEffect(0.70)
        }
    }
}

//Third onboarding page
struct PageView3: View {
    var body: some View {
        VStack {
            Image("pencil")
                .resizable()
                .scaledToFit()
                .foregroundColor(.teal)
                .scaleEffect(0.70)
                .offset(y: -40)
            
            HStack{
                Image("pinklines")
                    .scaleEffect(1.2)
                    .offset(x: 27, y:-42)
                
                Text("LOOK OUT \n FOR THE TOOLS")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                    .offset(x: -14)
            }
            .offset(y:-40)
            
            Text("To play some cards you may need \n extra tools — like pen and paper")
                .font(.headline)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .offset(y:-40)
        }
    }
}

//Fourth onboarding page
struct PageView4: View {
    var body: some View {
        VStack {
            
            HStack{
                Image("pinklines")
                    .scaleEffect(1.2)
                    .offset(x: 6, y: -45)
                
                Text("DISCOVER \n NEW CARDS")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                    .offset(x: -12)
            }
            .offset(y: 15)
            
            Text("by shaking your iPhone and \n generating a new deck of cards")
                .font(.headline)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .offset(y: 15)
            
            Image("Handspink")
                .resizable()
                .scaledToFit()
                .foregroundColor(.teal)
                .scaleEffect(0.70)
        }
    }
}

//fifth onboarding page
struct PageView5: View {
    var body: some View {
        VStack {
            Image("pencil")
                .resizable()
                .scaledToFit()
                .foregroundColor(.teal)
                .scaleEffect(0.70)
                .offset(y: -40)
            
            HStack{
                Image("pinklines")
                    .scaleEffect(1.2)
                    .offset(x: 8, y:-42)
                
                Text("SHAKE TO\n RANDOMIZE")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                    .offset(x: -14)
            }
            .offset(y:-40)
            
            Text("To play some cards you may need \n extra tools — like pen and paper")
                .font(.headline)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .offset(y:-40)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(showOnboarding: .constant(false))
    }
}
