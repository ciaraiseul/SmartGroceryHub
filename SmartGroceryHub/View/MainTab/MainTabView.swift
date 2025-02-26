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
//            .onAppear{
//                UIScrollView.appearance().isScrollEnabled = false
//            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .onChange(of: homeVM.selectTab) { newValue in
                debugPrint("Sel tab \(newValue)")
            }
            
            HStack{
                
                
                
                
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
