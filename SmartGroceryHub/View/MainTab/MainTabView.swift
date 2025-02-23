//
//  MainTabView.swift
//  SmartGroceryHub
//
//  Created by Phạm Trường Giang on 19/2/25.
//

import SwiftUI

struct MainTabView: View {
    
    @StateObject var homeVM = HomeViewModel.shared
    
    var body: some View {
        VStack{
            
            TabView(selection: $homeVM.selectTab){
                HomeView().tag(0)
                ExploreView().tag(1)
                ExploreView().tag(2)
                ExploreView().tag(3)
                ExploreView().tag(4)
            }
            .onAppear{
                UIScrollView.appearance().isScrollEnabled = false
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .onChange(of: homeVM.selectTab) { newValue in
                debugPrint("Sel tab \(newValue)")
            }
            
            HStack{
                
                Button{
                } label: {
                    VStack{
                        Image("store_tab")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        
                        Text("Cửa hàng")
                            .font(.custom("Times New Roman", size: 16))
                    }
                    
                }
                .foregroundColor(homeVM.selectTab == 0 ? .primaryApp : .primaryText)
                .frame(minWidth: 0, maxWidth: .infinity)
                
                Button{
                } label: {
                    VStack{
                        Image("explore_tab")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        
                        Text("Khám phá")
                            .font(.custom("Times New Roman", size: 16))
                    }
                    
                }
                .foregroundColor(homeVM.selectTab == 1 ? .primaryApp : .primaryText)
                .frame(minWidth: 0, maxWidth: .infinity)
                
                Button{
                } label: {
                    VStack{
                        Image("cart_tab")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        
                        Text("Giỏ hàng")
                            .font(.custom("Times New Roman", size: 16))
                    }
                    
                }
                .foregroundColor(homeVM.selectTab == 2 ? .primaryApp : .primaryText)
                .frame(minWidth: 0, maxWidth: .infinity)
                
                Button{
                } label: {
                    VStack{
                        Image("fav_tab")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        
                        Text("Yêu thích")
                            .font(.custom("Times New Roman", size: 16))
                    }
                    
                }
                .foregroundColor(homeVM.selectTab == 3 ? .primaryApp : .primaryText)
                .frame(minWidth: 0, maxWidth: .infinity)
                
                Button{
                } label: {
                    VStack{
                        Image("account_tab")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        
                        Text("Tài khoản")
                            .font(.custom("Times New Roman", size: 16))
                    }
                    
                }
                .foregroundColor(homeVM.selectTab == 4 ? .primaryApp : .primaryText)
                .frame(minWidth: 0, maxWidth: .infinity)
            }
            .padding(.top, 10)
            .padding(.bottom, .bottomInsets)
            .padding(.horizontal, 10)
            .background(Color.white)
            .cornerRadius(15)
            .shadow(color: Color.black.opacity(0.15), radius: 3, x: 0, y: -2)
            
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
