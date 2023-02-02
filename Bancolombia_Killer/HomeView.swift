//
//  HomeView.swift
//  Bancolombia_Killer
//
//  Created by Daniel Florez on 1/02/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
                
            ZStack(alignment: .center){
        
            Color(red: 255/255, green: 255/255, blue: 255/255).ignoresSafeArea()
                
                VStack{
                    
                    Text("Welcome Back!")
                    
                    Spacer(minLength: 30)
                    
                    Text("Username").font(.footnote)
                    
                    Spacer(minLength: 30)
                    
                    Image("User").resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 80, alignment: .center)
                    
                    Spacer(minLength: 60)
                    
                    Text("Cash Available")
                    
                    Spacer(minLength: 30)
                    
                    Text("$0.00 COP").font(.footnote)
                    
                    VStack {
                        Spacer(minLength: 60)
                        
                        HStack{
                            
                            Spacer()
                            
                            NavigationLink(destination: PayView()){
                                
                                Text("PAY").foregroundColor( .white).fontWeight(.bold).foregroundColor(.white).frame(width: 120, height: 50).background(Rectangle().fill(Color.black).shadow(radius: 10))
                                
                            }
                            
                            Spacer()
                            
                            NavigationLink(destination: PayView()){
                                
                                Text("RECIEVE").foregroundColor( .white).fontWeight(.bold).foregroundColor(.white).frame(width: 120, height: 50).background(Rectangle().fill(Color.black).shadow(radius: 10))
                        }
                            
                            Spacer()
                    }
                        
                        Spacer(minLength: 60)
                        
                        HStack{
                            
                            Spacer()
                            
                            NavigationLink(destination: PayView()){
                                
                                Text("RECHARGE").foregroundColor( .white).fontWeight(.bold).foregroundColor(.white).frame(width: 120, height: 50).background(Rectangle().fill(Color.black).shadow(radius: 10))
                                
                            }
                            
                            Spacer()
                            
                            NavigationLink(destination: HistoryView()){
                                
                                Text("HISTORY").foregroundColor( .white).fontWeight(.bold).foregroundColor(.white).frame(width: 120, height: 50).background(Rectangle().fill(Color.black).shadow(radius: 10))
                        }
                            
                            Spacer()
                            
                    }
                        
                        Spacer(minLength: 120)
                    
                        NavigationLink(destination: FaqView()) {
                                    Text("FAQ").foregroundColor(.black).fontWeight(.bold).font(.title).frame(width: 500, height: 100, alignment: .center).background(Rectangle().fill(Color.gray).shadow(radius: 10))
                                     
                            }
                }
            }
        
    }
}
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        Image("Home").resizable().aspectRatio(contentMode: .fill)
    }
}
