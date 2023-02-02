//
//  LoginView.swift
//  Bancolombia_Killer
//
//  Created by Daniel Florez on 28/01/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
        NavigationView{
        
            ZStack(alignment: .center){
            
            
            
            Color(red: 255/255, green: 255/255, blue: 255/255).ignoresSafeArea()
            
            VStack{
                Image("Logo").aspectRatio(contentMode: .fill).frame(width: 50, height: 10, alignment: .center)
                
                Spacer(minLength: 80)
                
                InformationView()
                
                
                
                NavigationLink(destination: FaqView()) {
                            Text("FAQ").foregroundColor(.black).fontWeight(.bold).font(.title).frame(width: 500, height: 100, alignment: .center).background(Rectangle().fill(Color.gray).shadow(radius: 10))
                             
                    }
                }
            }
        }
            
        
    }

}
    


struct InformationView: View {
    
    @State var tipoInicioSesion: Bool = true
    
    var body: some View {
        
        VStack{
        
            HStack{
                
                Spacer(minLength: 30)
                
                Button(action:
                        {
                    tipoInicioSesion = true
                    print("Login")
                },label: {
                            Text("LOGIN").foregroundColor(tipoInicioSesion ? .white :.gray).fontWeight(.bold).foregroundColor(.white).frame(width: 100, height: 50).background(Rectangle().fill(Color.black).shadow(radius: 10))
                            })
                
                Spacer(minLength: 30)
                
                Button(action:
                        {
                    tipoInicioSesion = false
                    print("SIGNUP")
                },label: {
                            Text("SIGNUP").foregroundColor(tipoInicioSesion ? .gray :.white).fontWeight(.bold).foregroundColor(.white).frame(width: 100, height: 50).background(Rectangle().fill(Color.black).shadow(radius: 10))
                            })
                
                Spacer(minLength: 30)
             
                
            } //Botones de Login y Signup
            
        }
        
        if (tipoInicioSesion == true){
            
            DataView()
            
        }else{
            
            SignupView()
        }
    }
}

struct DataView:View {
    
    @State var Correo:String = ""
    
    @State var Contraseña:String = ""
    
    var body: some View{
        
        ScrollView{
        
            VStack(alignment: .center){
        
                Spacer(minLength: 35)
                
                Text("E-MAIL")
                
                ZStack(alignment: .center){
                    
                    if Correo.isEmpty{
                    Text("Example@email").foregroundColor(.gray)
                    }
                    
                    TextField("", text: $Correo).multilineTextAlignment(.center) .foregroundColor(.gray)
                    
                } // Textfield para correo electronico
            
                Divider().frame(width: 200, height: 0.98, alignment: .center).border(.black)
                
                Spacer(minLength: 15)
                
                Text("PASSWORD")
                
                ZStack{
                    
                    if Contraseña.isEmpty{
                        Text("....").foregroundColor(.gray)
                    }
                    
                    SecureField("", text: $Contraseña).multilineTextAlignment(.center).foregroundColor(.gray)
                } //Textfield para contraseña
                
                Divider().frame(width: 200, height: 0.98, alignment: .center).border(.black)
                
            }
            
            Button(action: {}) {
                Text("Forgot your password?").foregroundColor(.gray).font(.footnote).frame(width: 250, height: 40, alignment: .bottomTrailing).padding(.bottom)
            } //Boton olvidaste tu contraseña la cual debe enviar a la View recuperacion contraseña
            
            NavigationLink(destination: HomeView()){
                Text("LOGIN ACCOUNT").foregroundColor(Contraseña.isEmpty || Correo.isEmpty ? .gray :.white).fontWeight(.bold).foregroundColor(.white).frame(width: 300, height: 50).background(Rectangle().fill(Color.black).shadow(radius: 10))
            }
            
            // Boton "Login Account"
            Spacer(minLength: 60)
            
            
            }
        }
        }
    

struct SignupView:View {
    
    @State var name:String = ""
    
    @State var email:String = ""
    
    @State var password:String = ""
    
    @State var anotherPassword:String = ""
    
    var body: some View{
        
        ScrollView {
            
            VStack{
                
                Spacer()
                
                Image("User").resizable().aspectRatio(contentMode: .fill).frame(width: 60, height: 60, alignment: .center)
                
                Spacer(minLength: 35)
                
                Text("Name")
                
                ZStack{
                    
                    if name.isEmpty{
                    Text("Full Name").foregroundColor(.gray)
                    }
                    
                    TextField("", text: $name).multilineTextAlignment(.center) .foregroundColor(.gray)
                    }
                
                Divider().frame(width: 200, height: 0.98, alignment: .center).border(.black)
                
                Spacer(minLength: 15)
                
                Text("Email")
                
                ZStack{
                    
                    if email.isEmpty{
                    Text("Example@email").foregroundColor(.gray)
                    }
                    
                    TextField("", text: $email).multilineTextAlignment(.center) .foregroundColor(.gray)
                    }
                
                VStack {
                    
                    Divider().frame(width: 200, height: 0.98, alignment: .center).border(.black)
                    
                    Spacer(minLength: 15)
                    
                    Text("Password")
                    
                    ZStack{
                        
                        if password.isEmpty{
                        Text("....").foregroundColor(.gray)
                        }
                        
                        SecureField("", text: $password).multilineTextAlignment(.center) .foregroundColor(.gray)
                        }
                    
                    Divider().frame(width: 200, height: 0.98, alignment: .center).border(.black)
                    
                    Spacer(minLength: 15)
                    
                    NavigationLink(destination: HomeView()) {
                            Text("SIGNUP ACCOUNT").foregroundColor(email.isEmpty || password.isEmpty || name.isEmpty ? .gray :.white).fontWeight(.bold).foregroundColor(.white).frame(width: 300, height: 50).background(Rectangle().fill(Color.black).shadow(radius: 10))
                    }
                    }
                }
                }
                }
                
    
                }
            
        
    



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginView()
                .previewInterfaceOrientation(.portrait)
            LoginView()
                .previewInterfaceOrientation(.portrait)
        }
       // Image("LoginTemplate").resizable().aspectRatio(contentMode: .fill)
        Image("SignupTemplate").resizable()
    }
}
