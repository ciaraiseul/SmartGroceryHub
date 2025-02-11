//
//  LoginView.swift
//  SmartGroceryHub
//
//  Created by Phạm Trường Giang on 11/2/25.
//

import SwiftUI

struct LoginView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var loginVM = MainViewModel.shared;
    
    var body: some View {
        ZStack{
            Image("bottom_bg")
            .resizable()
            .scaledToFill()
            .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .padding(.bottom, .screenWidth * 0.0)
                
                Text("Đăng nhập")
                    .font(.custom("Times New Roman", size: 40))
                    .foregroundColor(.primaryText)
                    .bold()
                    .padding(.bottom, 4)
                Text("Nhập Email và mật khẩu của bạn")
                    .font(.custom("Times New Roman", size: 16))
                    .foregroundColor(.secondaryText)
                    .padding(.bottom, .screenWidth * 0.1)
                
                
               
                Spacer()
                
            }
            .padding(.top, .topInsets + 64)
            .padding(.horizontal, 20)
            .padding(.bottom, .bottomInsets)
            
            VStack{
                
                HStack{
                    
                    Button{
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        
                    }
                    
                    Spacer()
                    
                }
                
                Spacer()
                
            }
            .padding(.top, .topInsets)
            .padding(.horizontal, 20)
            
        }
        .background(Color.white)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    LoginView()
}
