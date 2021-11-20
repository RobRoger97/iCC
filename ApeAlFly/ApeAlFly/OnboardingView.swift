//
//  Onboarding test.swift
//  ApeAlFly
//
//  Created by Ramona Ruoppo on 19/11/21.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var showOnboarding: Bool
    
    var body: some View {
        TabView {
            
//      Welcome screen
            VStack {
                Text("Welcome to iCanCreate")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 1.0)
                    .padding(.horizontal)
                    
                Text("here you can enhance your creativity")
                    .font(.title3)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
            }
            .background(
            Image("background")
                .scaleEffect(2)
            )
            
//       Onboarding
            
            ZStack{
                Image("pinklines")
                    .scaleEffect(1.2)
                    .padding()
                    .offset(x:-172, y: -215)
                
                PageView(
                imageName: "Handspink",
                title: "CHOOSE THE DECK",
                description: "based on the level you are \n interested to practice on", showsDismissButton: false, showOnboarding: $showOnboarding
            )
            }
            
            ZStack{
                Image("pinklines")
                    .scaleEffect(1.2)
                    .padding()
                    .offset(x:-102, y: -235)
            PageView(
                imageName: "pencil",
                title: "LOOK OUT \n FOR THE TOOLS",
                description: "To play some cards you may need \n extra tools — like pen and paper", showsDismissButton: false, showOnboarding: $showOnboarding
            )
            }
            
            ZStack{
                Image("pinklines")
                    .scaleEffect(1.2)
                    .padding()
                    .offset(x:-102, y: -235)
            PageView(
                imageName: "Handspink",
                title: "DISCOVER \n NEW CARDS",
                description: "by shaking your iPhone and \n generating a new deck of cards", showsDismissButton: false, showOnboarding: $showOnboarding
            )
            }
            
            VStack {
                ZStack{
                    Image("pinklines")
                        .scaleEffect(1.2)
                        .padding()
                        .offset(x:-100, y: -275)
                PageView(
                    imageName: "Handspink",
                    title: "SHAKE TO\n RANDOMIZE",
                    description: "based on the level you are \n interested to practice on", showsDismissButton: true, showOnboarding: $showOnboarding
                )
                }
            }
            
            
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
    let imageName: String
    let title: String
    let description: String
    let showsDismissButton: Bool
    @Binding var showOnboarding: Bool
    
    var body: some View {
        VStack(spacing: 30) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.top)
            
            Text(description)
                .font(.title3)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 250)
                .padding(.vertical)
            
            if showsDismissButton {
                Button(action: {
                    showOnboarding.toggle()
                }, label: {
                    Text("Start")
                        .bold()
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .cornerRadius(6)
                })
            }
        }
    }
}


struct OnboardingView2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(showOnboarding: .constant(true)).preferredColorScheme(.light)
        OnboardingView(showOnboarding: .constant(true)).preferredColorScheme(.dark)
    }
}

