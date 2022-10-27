//
//  FeelView.swift
//  Burden
//
//  Created by Gianmarco on 24/10/22.
//

import SwiftUI

struct FeelView: View {
    var body: some View {
        ZStack{
            Color("BackgroundColorHeader")
            
        
            VStack(alignment:.leading) {
                
                /*Button(action: Back) {
                    Text ("Player Mode")
                }.padding(.horizontal, 10)
                
                    .frame(height:15)*/
                Spacer()
                
                Text ("HOW DO YOU FEEL?")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.purple)
                    .multilineTextAlignment(.leading)
                    .frame(height:25)
                    .padding(.horizontal, 10)

                
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
                
                HStack{
                    
                    Button(action: {
                        print("Button tapped!")
                    }, label: {
                        Text("Sad")
                            .padding()
                            .foregroundColor(Color.white)
                    })
                    .frame(maxWidth: .infinity)
                    .background(Color.cyan)
                    .cornerRadius(10)
                    .padding()
                    Button(action: {
                        print("Button tapped!")
                    }, label: {
                        Text("Warned")
                            .padding()
                            .foregroundColor(Color.white)
                    })
                    .frame(maxWidth: .infinity)
                    .background(Color(hue: 0.302, saturation: 1.0, brightness: 0.729))
                    .cornerRadius(10)
                    Button(action: {
                        print("Button tapped!")
                    }, label: {
                        Text("Happy")
                            .padding()
                            .foregroundColor(Color.black)
                    })
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow)
                    .cornerRadius(10)
                   
                }
                .padding(.bottom, 20)
                
                HStack{
                    
                    Button(action: {
                        print("Button tapped!")
                    }, label: {
                        Text("Anxious")
                            .padding()
                            .foregroundColor(Color.white)
                    })
                    .frame(maxWidth: .infinity)
                    .background(Color(hue: 0.283, saturation: 0.876, brightness: 0.850))
                    .cornerRadius(10)
                    Button(action: {
                        print("Button tapped!")
                    }, label: {
                        Text("Angry")
                            .padding()
                            .foregroundColor(Color.white)
                    })
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                    .cornerRadius(10)
                    .padding()
                    Button(action: {
                        print("Button tapped!")
                    }, label: {
                        Text("Worried")
                            .padding()
                            .foregroundColor(Color.white)
                    })
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
                    .cornerRadius(10)
                   
                }
                .padding(.bottom, 50)
                
                HStack{
                    
                    Button(action: {
                        print("Button tapped!")
                    }, label: {
                        Text("Impatient")
                            .padding()
                            .foregroundColor(Color.white)
                    })
                    .frame(maxWidth: .infinity)
                    .background(Color.purple)
                    .cornerRadius(10)
                    Button(action: {
                        print("Button tapped!")
                    }, label: {
                        Text("Powerful")
                            .padding()
                            .foregroundColor(Color.white)
                    })
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
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
                .padding(.bottom, 0)
                
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
                
            }.padding(.bottom, 40)
            .frame(width: 370)
        }
        .ignoresSafeArea()

    }
}

func Back(){
   //Function to go back
}

struct FeelView_Previews: PreviewProvider {
    static var previews: some View {
        FeelView()
    }
}
