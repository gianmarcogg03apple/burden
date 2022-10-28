//
//  RewardView.swift
//  Burden
//
//  Created by Stefano Capizzi on 28/10/22.
//

import SwiftUI

struct RewardView: View {
    var body: some View {
        NavigationView {
            
            ZStack{
                Color(red: 0.98, green: 0.976, blue: 0.930)
                    .ignoresSafeArea()
                
                
                HStack(spacing: 155) {
                    Button {
                        
                    } label: {
                        Image(systemName: "book")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.black)
                        
                        
                    }
                    
                    Spacer()
                    
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.black)
                    }
                    
                    
                }
                .frame(width: 380)
                .padding(.bottom, 750)
                
                
                
                
                VStack(spacing: 25) {
                    
                    
                    
                    
                    HStack(spacing: 25) {
                        Image(systemName: "circle.fill")
                            .resizable()
                            .scaledToFit()
                            .imageScale(.large)
                            .foregroundColor(.cyan)
                        
                        Image(systemName: "triangle.fill")
                            .resizable()
                            .scaledToFit()
                            .imageScale(.large)
                            .foregroundColor(.red)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .scaledToFit()
                            .imageScale(.large)
                            .foregroundColor(.purple)
                        
                    }
                    
                    HStack(spacing: 25) {
                        Image(systemName: "triangle.fill")
                            .resizable()
                            .scaledToFit()
                            .imageScale(.large)
                            .foregroundColor(.orange)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .scaledToFit()
                            .imageScale(.large)
                            .foregroundColor(.green)
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .scaledToFit()
                            .imageScale(.large)
                            .foregroundColor(.cyan)
                        
                    }
                    
                    
                    HStack(spacing: 25) {
                        Image(systemName: "square.fill")
                            .resizable()
                            .scaledToFit()
                            .imageScale(.large)
                            .foregroundColor(.red)
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .scaledToFit()
                            .imageScale(.large)
                            .foregroundColor(.yellow)
                        
                        Image(systemName: "triangle.fill")
                            .resizable()
                            .scaledToFit()
                            .imageScale(.large)
                            .foregroundColor(.green)
                        
                    }
                    
                    
                }
                .frame(width: 220)
                .padding(.bottom, 300)
                
                
                Text("SELF LOVE")
                    .font(.title)
                    .fontWeight(.black)
                    .padding(.top,50)
                
                Text("Take your right hand\nTouch your chest and say:\n\nI love myself and I\ndeserve to be loved")
                    .font(.title)
                    .padding(.top,350)
                
                
                /*NavigationLink {
                    PlayerModeView()
                } label: {
                    Text("Restart")
                        .font(.title2)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .background(Color.black)
                        .cornerRadius(10)
                        .padding()
                        .padding(.top,680)
                }*/
                
                
                
                
                
                
                
            }
            
        }
    }
}

struct RewardView_Previews: PreviewProvider {
    static var previews: some View {
        RewardView()
    }
}
