//
//  Onboarding test.swift
//  ApeAlFly
//
//  Created by Ramona Ruoppo on 19/11/21.
//

import SwiftUI

struct OnboardingView2: View {
    @Binding var showOnboarding: Bool
    
    var body: some View {
        TabView {
            ZStack{
                Image("pinklines")
                    .scaleEffect(1.2)
                    .padding()
                    .offset(x:-170, y: -200)
                
                PageViewTest(
                imageName: "Handspink",
                title: "CHOOSE THE DECK",
                description: "based on the level you are \n interested to practice on"
            )
            }
            
            ZStack{
                Image("pinklines")
                    .scaleEffect(1.2)
                    .padding()
                    .offset(x:-102, y: -215)
            PageViewTest(
                imageName: "pencil",
                title: "LOOK OUT \n FOR THE TOOLS",
                description: "To play some cards you may need \n extra tools — like pen and paper"
            )
            }
            
            ZStack{
                Image("pinklines")
                    .scaleEffect(1.2)
                    .padding()
                    .offset(x:-102, y: -215)
            PageViewTest(
                imageName: "Handspink",
                title: "DISCOVER \n NEW CARDS",
                description: "by shaking your iPhone and \n generating a new deck of cards"
            )
            }
            
            ZStack{
                Image("pinklines")
                    .scaleEffect(1.2)
                    .padding()
                    .offset(x:-102, y: -215)
            PageViewTest(
                imageName: "Handspink",
                title: "SHAKE TO\n RANDOMIZE",
                description: "based on the level you are \n interested to practice on"
            )
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
struct PageViewTest: View {
    let imageName: String
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Text(description)
                .font(.title3)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 250)
                .padding()
        }
    }
}


struct OnboardingView2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView2(showOnboarding: .constant(false)).preferredColorScheme(.light)
        OnboardingView2(showOnboarding: .constant(false)).preferredColorScheme(.dark)
    }
}

