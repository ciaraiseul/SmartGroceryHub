//
//  SignInView.swift
//  SmartGroceryHub
//
//  Created by Phạm Trường Giang on 10/2/25.
//

import SwiftUI
import CountryPicker

struct SignInView: View {
    
    @State var txtMobile: String = ""
    @State var isShowPicker: Bool = false
    @State var countryObj: Country?
    
    var body: some View {
        ZStack{
            
            Image("bottom_bg")
            .resizable()
            .scaledToFill()
            .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                Image("sign_in_top")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenWidth)
                
                Spacer()
            }
            
            ScrollView{
                
                VStack(alignment: .leading){
                    Text("Mua hàng cùng với\nSmart Grocery Hub")
                        .font(.customfont(.semibold, fontSize: 26))
                        .foregroundColor(.primaryText)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom , 25)
                    
                    HStack{
                        
                        Button{
                            isShowPicker = true
                        } label: {
                            //Image("")
                            if let countryObj = countryObj {
                                Text("\( countryObj.isoCode.getFlag() )")
                                    .font(.customfont(.medium, fontSize: 35))
                                Text("+\( countryObj.phoneCode )")
                                    .font(.customfont(.medium, fontSize: 18))
                                    .foregroundColor(.primaryText)
                            }
                            
                        }
                        
                        TextField("Enter mobile", text: $txtMobile)
                            .frame(minWidth: 0, maxWidth: .infinity)
                    }
                    
                    NavigationLink {
                        LoginView()
                    } label: {
                        Text("Continue with Email Sign In")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame( minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60 )
                    .background( Color(hex: "5383EC"))
                    .cornerRadius(20)
                    .padding(.bottom, 8 )
                    
                    
                    NavigationLink {
                        SignUpView()
                    } label: {
                        Text("Continue with Email Sign Up")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame( minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60 )
                    .background( Color.primaryApp)
                    .cornerRadius(20)
                    .padding(.bottom, 8 )
                    
                    Divider()
                        .padding(.bottom, 25)
                    
                    Text( "Hoặc đăng nhập với")
                        .font(.custom("Times New Roman", size: 16))
                        .foregroundColor(.textTitle)
                        .multilineTextAlignment(.center)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .padding(.bottom , 25)
                    
                    Button {
                       
                    } label: {
                        
                        Image("google_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        
                        Text("Continue with Google")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame( minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60 )
                    .background( Color(hex: "5383EC"))
                    .cornerRadius(20)
                    .padding(.bottom, 8 )
                    
                    
                    Button {
                       
                    } label: {
                        
                        Image("fb_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)

                        Text("Continue with Facebook")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame( minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60 )
                    .background( Color(hex: "4A66AC"))
                    .cornerRadius(20)
                        
                }
                .padding(.horizontal, 20)
                .frame(width: .screenWidth, alignment: .leading)
                .padding(.top, .topInsets +  .screenWidth * 0.6  )
            }
            
        }
        .onAppear{
            self.countryObj = Country(phoneCode: "84", isoCode: "VN")
        }
        .sheet(isPresented: $isShowPicker, content: {
            CountryPickerUI(country: $countryObj)
        })
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    SignInView()
}
