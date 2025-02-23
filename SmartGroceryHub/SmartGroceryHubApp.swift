//
//  SmartGroceryHubApp.swift
//  SmartGroceryHub
//
//  Created by Phạm Trường Giang on 9/2/25.
//

import SwiftUI

@main
struct SmartGroceryHubApp: App {
    
    @StateObject var mainVM = MainViewModel.shared
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                
                if mainVM.isUserLogin {
                    MainTabView()
                }else{
                    WelcomeView()
                }
            }
            
        }
    }
}
