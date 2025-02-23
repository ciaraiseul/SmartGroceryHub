//
//  MainTabView.swift
//  SmartGroceryHub
//
//  Created by Phạm Trường Giang on 19/2/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        ZStack{
            
            VStack{
                
               // Spacer()
                
                HStack{
                   
                    Button{
                        MainViewModel.shared.isUserLogin = false
                    } label: {
                        Text("Đăng xuất")
                    }
                    
                }
            }
            
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    MainTabView()
}
