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
        VStack{
            List {
                Picker(selection: .constant(1), label: Text("--")) {
                    Text("Angry").tag(1)
                    Text("Sad").tag(2)
                }
            }
        }.padding(.bottom)
    }
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
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
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
