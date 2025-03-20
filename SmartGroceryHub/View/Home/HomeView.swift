//
//  HomeView.swift
//  SmartGroceryHub
//
//  Created by Phạm Trường Giang on 23/2/25.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeVM = HomeViewModel.shared
    
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
                    
                    SearchTextField(placholder: "Tìm kiếm", txt: $homeVM.txtSearch)
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
                        ForEach (homeVM.offerArr, id: \.id){
                            pObj in
                            
                            ProductCell(pObj: pObj, didAddCart: {
                                
                            })
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 4)
                }
                
                SectionTitleAll(title: "Bán chạy nhất", titleAll: "Xem tất cả") {
                    
                }
                .padding(.horizontal, 20)
                
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHStack(spacing: 15) {
                        ForEach (homeVM.bestArr, id: \.id){
                            pObj in
                            
                            ProductCell(pObj: pObj, didAddCart: {
                                
                            })
                        
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 4)
                }
                
                SectionTitleAll(title: "Gian hàng", titleAll: "Xem tất cả") {
                    
                }
                .padding(.horizontal, 20)
                
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHStack(spacing: 15) {
                        ForEach (homeVM.typeArr, id: \.id){
                            tObj in
                            
                            CategoryCell(tObj: tObj, didAddCart: {
                                
                            })
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 4)
                }
                .padding(.bottom, 15)
                
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHStack(spacing: 15) {
                        ForEach (homeVM.listArr, id: \.id){
                            pObj in
                            
                            ProductCell(pObj: pObj, didAddCart: {
                                
                            })
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 4)
                }
                .padding(.bottom, 15)
            }
        }
        .ignoresSafeArea()

    }
}

#Preview {
    HomeView()
}
