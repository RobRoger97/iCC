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
                Text("WELCOME TO \n iCanCreate")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 1.0)
                    .padding(.horizontal)
                    
                Text("here you can enhance your creativity")
                    .font(.title3)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 60)
            }
            .background(
            Image("background")
                .scaleEffect(2.2)
                .ignoresSafeArea()
            )
            
//       Onboarding
            
            ZStack{
                Image("pinklines")
                    .scaleEffect(1.2)
                    .padding()
                    .offset(x:-168, y: -238)
                
                PageView(
                imageName: "Handspink",
                title: "CHOOSE THE DECK",
                description: "based on the level you are \n interested to practice on", showsDismissButton: false, showOnboarding: $showOnboarding
                ).padding(.bottom, 70)
            }
            
            ZStack{
                Image("pinklines")
                    .scaleEffect(1.2)
                    .padding()
                    .offset(x:-98, y: -238)
                PageView(
                imageName: "pencil",
                title: "LOOK OUT \n FOR THE TOOLS",
                description: "To play some cards you may need \n extra tools — like pen and paper", showsDismissButton: false, showOnboarding: $showOnboarding
                ) .padding(.bottom, 30)
            }
            
            ZStack{
                Image("pinklines")
                    .scaleEffect(1.2)
                    .padding()
                    .offset(x:-184, y: -238)
                PageView(
                imageName: "Handspink",
                title: "DISCOVER THEM ALL",
                description: "Each deck has different categories. \n You can distinguish them by checking the tag", showsDismissButton: false, showOnboarding: $showOnboarding
                ) .padding(.bottom, 66)
            }
            
            VStack {
                ZStack{
                    Image("pinklines")
                        .scaleEffect(1.2)
                        .padding()
                        .offset(x:-93, y: -285)
                PageView(
                    imageName: "Shake",
                    title: "SHAKE TO\n RANDOMIZE",
                    description: "by shaking your iPhone and \n generating a new deck of cards", showsDismissButton: true, showOnboarding: $showOnboarding
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
        VStack(spacing: 20) {
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
                        .background(Color.purple)
                        .cornerRadius(6)
                        .padding(.top, 50)
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

