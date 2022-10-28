//
//  FeelView.swift
//  Burden
//
//  Created by Gianmarco on 24/10/22.
//

import SwiftUI

struct FeelView: View {
    var body: some View {
        
            NavigationView {
        /*
         ZStack{
         Color("BackgroundColorHeader").ignoresSafeArea()
         
         
         VStack(alignment:.leading) {
         
         /*Button(action: Back) {
          Text ("Player Mode")
          }.padding(.horizontal, 10)
          
          .frame(height:15)*/
         
         
         
         
         
         Spacer()
         /*
          HStack{
          Image(systemName: "triangle.fill")
          .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
          .foregroundColor(Color(hue: 0.524, saturation: 0.743, brightness: 0.946))
          .frame(width: 50.0, height: 50.0)
          .frame(width:50)
          .padding()
          
          
          Image(systemName: "square.fill")
          .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
          .foregroundColor(Color(hue: 0.302, saturation: 1.0, brightness: 0.729))
          .frame(width: 50.0,
          height: 50.0)
          .frame(width:50)
          .padding()
          
          Image(systemName: "circle.fill")
          .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
          .foregroundColor(Color(hue: 0.283, saturation: 0.876, brightness: 0.989))
          .frame(width: 50.0,
          height: 50.0)
          .frame(width:50)
          .padding()
          
          
          Image(systemName: "circle.fill")
          .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
          .foregroundColor(Color(hue: 0.217, saturation: 0.736, brightness: 0.931))
          .frame(width: 50.0,
          height: 50.0)
          .padding()
          }
          .padding(.bottom, 20)
          */
         
         HStack{
         
         Button(action: {
         print("Button tapped!")
         }, label: {
         Text("Sad")
         .padding()
         .foregroundColor(Color.white)
         })
         .frame(maxWidth: .infinity)
         .background(Color("Blue"))
         .cornerRadius(10)
         Button(action: {
         print("Button tapped!")
         }, label: {
         Text("Warned")
         .padding()
         .foregroundColor(Color.white)
         })
         .frame(maxWidth: .infinity)
         .background(Color("DarkGreen"))
         .cornerRadius(10)
         Button(action: {
         print("Button tapped!")
         }, label: {
         Text("Happy")
         .bold()
         .overlay(Text("Happy")
         .bold()
         .foregroundColor(.white)
         .offset(x:1,y:-1))
         .padding()
         .foregroundColor(Color.black)
         })
         .frame(maxWidth: .infinity)
         .background(Color("Yellow"))
         .cornerRadius(10)
         
         }
         
         HStack{
         
         Button(action: {
         print("Button tapped!")
         }, label: {
         Text("Anxious")
         .padding()
         .foregroundColor(Color.white)
         })
         .frame(maxWidth: .infinity)
         .background(Color("Green"))
         .cornerRadius(10)
         Button(action: {
         print("Button tapped!")
         }, label: {
         Text("Angry")
         .padding()
         .foregroundColor(Color.white)
         })
         .frame(maxWidth: .infinity)
         .background(Color("Pink"))
         .cornerRadius(10)
         Button(action: {
         print("Button tapped!")
         }, label: {
         Text("Worried")
         .padding()
         .foregroundColor(Color.white)
         })
         .frame(maxWidth: .infinity)
         .background(Color("Orange"))
         .cornerRadius(10)
         
         }
         
         HStack{
         
         Button(action: {
         print("Button tapped!")
         }, label: {
         Text("Impatient")
         .padding()
         .foregroundColor(Color.white)
         })
         .frame(maxWidth: .infinity)
         .background(Color("Purple"))
         .cornerRadius(10)
         Button(action: {
         print("Button tapped!")
         }, label: {
         Text("Powerful")
         .padding()
         .foregroundColor(Color.white)
         })
         .frame(maxWidth: .infinity)
         .background(Color("LightGreen"))
         .cornerRadius(10)
         Button(action: {
         print("Button tapped!")
         }, label: {
         Text("Neutral")
         .padding()
         .foregroundColor(Color.white)
         })
         .frame(maxWidth: .infinity)
         .background(Color.gray)
         .cornerRadius(10)
         
         }
         /*
          HStack{
          Image(systemName: "triangle.fill")
          .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
          .foregroundColor(Color(hue: 0.839, saturation: 0.511, brightness: 0.897))
          .frame(width: 50.0, height: 50.0)
          .frame(width:50)
          .padding()
          
          
          Image(systemName: "square.fill")
          .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
          .foregroundColor(Color.pink)
          .frame(width: 50.0,
          height: 50.0)
          .frame(width:50)
          .padding()
          
          Image(systemName: "circle.fill")
          .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
          .foregroundColor(Color(hue: 0.128, saturation: 0.943, brightness: 1.0))
          .frame(width: 50.0,
          height: 50.0)
          .frame(width:50)
          .padding()
          
          
          Image(systemName: "circle.fill")
          .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
          .foregroundColor(Color(hue: 0.158, saturation: 0.97, brightness: 0.996))
          .frame(width: 50.0,
          height: 50.0)
          .padding()
          }
          .padding(.top, 50)
          
          Button(action: {
          print("Button tapped!")
          }, label: {
          Text("Confirm")
          .padding()
          .foregroundColor(Color.white)
          })
          .frame(maxWidth: .infinity)
          .background(Color.black)
          .cornerRadius(10)
          .padding()
          */                    Spacer()
         }.padding()
         // .frame(width: 370)
         
         
         }
         */
        ZStack{
            
            Color("BackgroundColorHeader").ignoresSafeArea()
            VStack{
                Text ("HOW DO YOU FEEL?")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.purple)
                    .multilineTextAlignment(.leading)
                    .frame(height:25)
                    .padding(.bottom)
                Spacer()
                
                Grid {
                    FeelingButton(aFeelingName: "Sad", theFeelingColor: "Blue")
                    FeelingButton(aFeelingName: "Warned", theFeelingColor: "DarkGreen")
                    FeelingButton(aFeelingName: "Anxious", theFeelingColor: "Green")
                    FeelingButton(aFeelingName: "Powerful", theFeelingColor: "LightGreen")
                    FeelingButton(aFeelingName: "Neutral", theFeelingColor: "Gray")
                    FeelingButton(aFeelingName: "Happy", theFeelingColor: "Yellow")
                    FeelingButton(aFeelingName: "Worried", theFeelingColor: "Orange")
                    FeelingButton(aFeelingName: "Angry", theFeelingColor: "Pink")
                    FeelingButton(aFeelingName: "Impatient", theFeelingColor: "Purple")
                    
                    
                    
                }.padding()
                Spacer()
            }
        }
        
    }
}

    struct FeelingButton: View {
        var aFeelingName : String
        var theFeelingColor : String
        var body: some View {
            if (aFeelingName == "Neutral"){
                Button(action: {
                    print("Button tapped!")
                }, label: {
                    RoundedRectangle(cornerRadius: 10).overlay {
                        Text(aFeelingName)
                            .font(.headline)
                            .shadow(color: .white,radius: 3,x: 1,y:1)
                            .padding()
                            .foregroundColor(Color.black)
                    }
                    .frame(maxWidth: 300)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(color: .gray,radius: 2,x: 1,y:1)
                    
                })
                
                
            }else{
                NavigationLink {
                    OnePlayerGameView(theEmotionToPlay: getEmotionToPlay(theEmotionTitle: aFeelingName))
                } label: {
                    RoundedRectangle(cornerRadius: 10).overlay {
                        Text(aFeelingName)
                            .font(.headline)
                            .shadow(color: .gray,radius: 3,x: 1,y:1)
                            .padding()
                            .foregroundColor(Color.white)
                    }.frame(maxWidth: 300)
                        .foregroundColor(Color(theFeelingColor))
                        .buttonBorderShape(.roundedRectangle(radius: 10))
                        .cornerRadius(10)
                        .shadow(color: .secondary,radius: 1,x: 0,y:2)
                }
                
            }
        }
    }
}


struct FeelView_Previews: PreviewProvider {
    static var previews: some View {
        FeelView()
    }
}
