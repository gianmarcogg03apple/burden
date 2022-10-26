//
//  FeelView.swift
//  Burden
//
//  Created by Gianmarco on 24/10/22.
//
//  I'm sorry, I can't do much, SwiftUI sucks.
//

import SwiftUI

struct FeelView: View {
    var body: some View {
        ZStack{
            VStack{
                FeelHeader()
                FeelSelector()
            }
        }
    }
}

// Mood selector area with shapes around
struct FeelSelector: View {
    var body: some View {
        VStack(alignment:.leading) {
            
            //Random shapes at the top, not intended to be here, so they're commented out
            
            /*HStack{
                Image(systemName: "triangle.fill")
                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .foregroundColor(Color(hue: 0.524, saturation: 0.743, brightness: 0.946))
                    .frame(width: 50.0, height: 50.0)
                Spacer()
                    .frame(width:50)
                
                
                Image(systemName: "square.fill")
                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .foregroundColor(Color(hue: 0.302, saturation: 1.0, brightness: 0.729))
                    .frame(width: 50.0,
                           height: 50.0)
                Spacer()
                    .frame(width:50)
                
                Image(systemName: "circle.fill")
                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .foregroundColor(Color(hue: 0.283, saturation: 0.876, brightness: 0.989))
                    .frame(width: 50.0,
                           height: 50.0)
                Spacer()
                    .frame(width:50)
                
                
                Image(systemName: "circle.fill")
                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .foregroundColor(Color(hue: 0.217, saturation: 0.736, brightness: 0.931))
                    .frame(width: 50.0,
                           height: 50.0)
            }
            
            Spacer()
                .frame(height:60)*/
            
            VStack(alignment:.leading) {
                GroupBox(){
                    HStack {
                        Image("es-blue")
                            .resizable()
                            .frame(width: 90 , height: 90)
                        Spacer()
                            .frame(width:30)
                        Image("es-orange")
                            .resizable()
                            .frame(width: 90 , height: 90)
                        Spacer()
                            .frame(width:30)
                        Image("es-gray")
                            .resizable()
                            .frame(width: 90 , height: 90)
                    }
                    
                    Spacer()
                        .frame(height:30)
                    
                    HStack {
                        Image("es-cyan")
                            .resizable()
                            .frame(width: 90 , height: 90)
                        Spacer()
                            .frame(width:30)
                        Image("es-red")
                            .resizable()
                            .frame(width: 90 , height: 90)
                        Spacer()
                            .frame(width:30)
                        Image("es-lime")
                            .resizable()
                            .frame(width: 90 , height: 90)
                    }
                    
                    Spacer()
                        .frame(height:30)
                    
                    HStack {
                        Image("es-purple")
                            .resizable()
                            .frame(width: 90 , height: 90)
                        Spacer()
                            .frame(width:30)
                        Image("es-yellow")
                            .resizable()
                            .frame(width: 90 , height: 90)
                        Spacer()
                            .frame(width:30)
                        Image("es-darkcyan")
                            .resizable()
                            .frame(width: 90 , height: 90)
                    }
                }
            }
            Spacer()
        }
    }
}

func Back(){
   //Function to go back
}

// Header part with "back" button
struct FeelHeader: View {
    var body: some View {
        ZStack{
            
            Rectangle()
                .foregroundColor(Color("BackgroundColorHeader"))
                .frame(height: 200)
            VStack{
                
                HStack{
                    Button("Player Mode") {
                        Back()
                    }
                    Spacer()
                }.padding(.horizontal)
                HStack{
                    Text("HOW DO YOU FEEL?")
                        .padding(15)
                    Spacer()
                }.padding(.horizontal)
            }
        }
    }
}

struct FeelView_Previews: PreviewProvider {
    static var previews: some View {
        FeelView()
    }
}
