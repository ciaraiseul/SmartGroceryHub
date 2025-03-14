//
//  HomeView.swift
//  SmartGroceryHub
//
//  Created by Phạm Trường Giang on 23/2/25.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var HomeVM = HomeViewModel.shared
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                    Image("app_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25)
                        
                    HStack{
                        Image("location")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 16, height: 16)
                        
                        Text("48 Tố Hữu, Hà Nội")
                            .font(.custom("Times New Roman", size: 18))
                            .foregroundColor(.darkGray)
                    }
                    
                    SearchTextField(placholder: "Tìm kiếm", txt: $HomeVM.txtSearch)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                    
                }
                .padding(.top, .topInsets)
                
                Image("banner_top")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 115)
                    .padding(.horizontal, 20)
                
                SectionTitleAll(title: "Ưu đãi độc quyền", titleAll: "Xem tất cả") {
                    
                }
                .padding(.horizontal, 20)
                
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHStack(spacing: 15) {
                        ForEach (0...5, id: \.self){
                            index in
                            
                            ProductCell{
                                
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 4)
                }
                
                
                
            }
        }
        .ignoresSafeArea()

    }
}

#Preview {
    HomeView()
}
