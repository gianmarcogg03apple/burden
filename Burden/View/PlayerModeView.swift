//
//  PlayerModeView.swift
//  Burden
//
//  Created by Federico Di Silvio on 27/10/22.
//

import SwiftUI

struct PlayerModeView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color(red: 0.98, green: 0.976, blue: 0.930)
                    .ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    HStack{
                        Button {
                            
                            
                        } label: {
                            Image(systemName: "trophy.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.black)
                                .padding(.bottom)
                        }
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "gear")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.black)
                                .padding(.bottom)
                        }
                        
                    }
                    
                    Text("PLAYER MODE")
                        .font(.title)
                    
                    NavigationLink {
                        FeelView()
                    } label: {
                        Text("One\nPlayer")
                            .font(.system(size: 60, weight: .light, design: .default))
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.leading)
                            .padding(10)
                            .padding(.bottom, 100)
                            .frame(maxWidth: .infinity, minHeight: 270, alignment: .leading)
                            .background(Image("oneplayer")
                                .resizable()
                                .scaledToFill())
                            .tint(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                    }
                    
                    Button {
                        
                    } label: {
                        Spacer()
                        Text("Two\nPlayers")
                            .font(.system(size: 60, weight: .light, design: .default))
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.trailing)
                            .padding(10)
                            .padding(.top, 100)
                        
                    }
                    .frame(maxWidth: .infinity, minHeight: 270)
                    .background(Image("twoplayers")
                        .resizable()
                        .scaledToFill())
                    .tint(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    
                    .padding(.bottom, 50)
                }
                
                .padding()
            }
        }
    }
}

struct PlayerModeView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerModeView()
    }
}
