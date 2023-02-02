//
//  HistoryView.swift
//  Bancolombia_Killer
//
//  Created by Daniel Florez on 1/02/23.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        
        ZStack(alignment: .center) {
            
            Color(red: 255/255, green: 255/255, blue: 255/255).ignoresSafeArea()
            
            VStack{
                
                Text("PAY SUCCESFUL!")
                
                Text("Date: 09/011/2001").font(.footnote)
                
                Spacer(minLength: 100)
                
                VStack {
                    
                    Text("From: USERNAME")
                    
                    Image("User").resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 80, alignment: .center)
                
                
                    Divider().frame(width: 200, height: 1, alignment: .center).border(.black)
                    
                    Text("To: AnotherUserName")
                        
                    Image("User").resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 80, alignment: .center)
                
                    Divider().frame(width: 200, height: 1, alignment: .center).border(.black)
                    
    
                }
            
                VStack {
                    
                    Text("For a sum of").frame(width: 100, height: 40, alignment: .center)
                    
                    Text("$0.00 COP").frame(width: 100, height: 50, alignment: .center)
                }
                
                VStack {
                    
                    NavigationLink(destination: HomeView()){
                        
                        Text("GOT IT!").foregroundColor( .white).fontWeight(.bold).foregroundColor(.white).frame(width: 120, height: 50).background(Rectangle().fill(Color.black).shadow(radius: 10))
                    }
                }
            
                Spacer()
        }
    }
}
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
        Image("History").resizable().aspectRatio(contentMode: .fill)
    }
}
