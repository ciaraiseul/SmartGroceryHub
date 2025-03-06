//
//  HomeView.swift
//  SmartGroceryHub
//
//  Created by Phạm Trường Giang on 23/2/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                    Image("app_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60)
                        
                    HStack{
                        Image("location")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 16, height: 16)
                        
                        Text("48 Tố Hữu, Hà Nội")
                            .font(.custom("Times New Roman", size: 18))
                            .foregroundColor(.darkGray)
                    }
                }
                .padding(.top, .topInsets)
                
                
            }
        }
        .ignoresSafeArea()

    }
}

#Preview {
    HomeView()
}
