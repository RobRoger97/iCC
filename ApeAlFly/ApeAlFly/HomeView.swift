//
//  HomeView.swift
//  ApeAlFly
//
//  Created by Marco Cucci  on 21/11/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Image("homeBackground")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            VStack {
                VStack(spacing: 17) {
                    HStack {
                        Image(systemName: "info.circle")
                            .font(.title2)
                            .padding(.leading, 10.0)
                        Spacer()
                    }

                    Text("Choose your deck of cards")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                .padding(.top, 34.0)
                .padding()

                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack {
                        
                        DeckView()
                        DeckView()
                        DeckView()
                        DeckView()
                        
                    }.frame(width: .infinity, height: 500)
                        .padding(.horizontal)
                
                    
                    
                    
                    
                }
                
                
                VStack {
                    Image(systemName: "iphone.homebutton.radiowaves.left.and.right")
                        .font(.title)
                    Text("Shake to generate a random \ndeck of cards")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    
                }
                .padding()
                
                Spacer()
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct DeckView: View {
    var body: some View {
        ZStack {
            
            // Sfondo Deck
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 290, height: 460)
                .foregroundColor(.white)
                .shadow(radius: 8)
            
            
            VStack {
                
                // Livello Deck
                HStack {
                    Text("Level:  ")
                    Image(systemName: "star.fill")
                    Image(systemName: "star")
                    Image(systemName: "star")
                    Spacer()
                }
                .padding(.leading, 25.0)
                
                
                // Testo Deck
                Text("Lorem ipsum dolor sit amet, consectetur adipisci elit, sed do eiusmod tempor incidunt ut labore et dolore magna aliqua.")
                    .font(.body)
                    .fontWeight(.regular)
                    .padding()
                
                
                // Indicatori esercizi (da modificare)
                VStack {
                    
                    HStack {
                        Group {
                            Circle()
                                .frame(width: 7, height: 7)
                            Circle()
                                .frame(width: 7, height: 7)
                            Circle()
                                .frame(width: 7, height: 7)
                        }
                        Text("Drawing")
                            .font(.body)
                            .fontWeight(.light)
                            .padding(.leading, 10)
                        Spacer()
                    }
                    .padding(.leading, 24.0)
                    
                    HStack {
                        Group {
                            Circle()
                                .frame(width: 7, height: 7)
                            Circle()
                                .frame(width: 7, height: 7)
                            Circle()
                                .frame(width: 7, height: 7)
                        }
                        Text("Logic")
                            .font(.body)
                            .fontWeight(.light)
                            .padding(.leading, 10)
                        Spacer()
                    }
                    .padding(.leading, 24.0)
                    
                    HStack {
                        Group {
                            Circle()
                                .frame(width: 7, height: 7)
                            Circle()
                                .frame(width: 7, height: 7)
                            Circle()
                                .frame(width: 7, height: 7)
                        }
                        Text("Writing")
                            .font(.body)
                            .fontWeight(.light)
                            .padding(.leading, 10)
                        Spacer()
                    }
                    .padding(.leading, 24.0)
                    
                    
                    
                    
                }
                
                // Bottone deck
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Choose")
                        .font(.title3)
                        .fontWeight(.bold)
                }
                .foregroundColor(.white)
                .frame(width: 206, height: 45)
                .background(Color.lightPurple)
                .cornerRadius(12)
                .padding(.top, 50)
                
                
                
                
                
                
                
                
                
            } .frame(width: 290, height: 460)
            
            
            
            
            
            
        }
        .frame(width: 290, height: 460)
        .padding()
    }
}
