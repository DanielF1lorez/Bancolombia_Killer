//
//  PayView.swift
//  Bancolombia_Killer
//
//  Created by Daniel Florez on 1/02/23.
//

import SwiftUI

struct PayView: View {
    var body: some View {
       
        ZStack(alignment: .center) {
            
            Color(red: 255/255, green: 255/255, blue: 255/255).ignoresSafeArea()
            
            VStack {
                
                Text("Please scan the que code of the")
                Text("seller with the camera of you")
                Text("device")
                
                Spacer(minLength: 10)
        
                ZStack {
                                        
                    Image("Camera").resizable().frame(width: 25, height: 25, alignment: .center).aspectRatio(contentMode: .fill)
                    
                    Image("BorderCamera").resizable().frame(width: 250, height: 320, alignment: .center).aspectRatio(contentMode: .fill)
                }
                
                Spacer()
                
                Text("Amount to pay")
                
                Spacer()
                
                Text("$0.00 COP")

                
                VStack{
                    
                    Spacer()
                    
                    NavigationLink(destination: HistoryView()){
                        
                        Text("PAY").foregroundColor( .white).fontWeight(.bold).foregroundColor(.white).frame(width: 120, height: 50).background(Rectangle().fill(Color.black).shadow(radius: 10))
                        
                    }
                    
                    Spacer(minLength: 10)
                    
                }.padding(.bottom, 20.0)
            
        }
    }
}
}

struct PayView_Previews: PreviewProvider {
    static var previews: some View {
        PayView()
        Image("Pay").resizable().aspectRatio(contentMode: .fill)
    }
}
