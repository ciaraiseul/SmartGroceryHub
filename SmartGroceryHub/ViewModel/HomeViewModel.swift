//
//  HomeViewModel.swift
//  SmartGroceryHub
//
//  Created by Phạm Trường Giang on 23/2/25.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    static var shared: HomeViewModel = HomeViewModel()
    
    @Published var selectTab: Int = 0
    @Published var txtSearch: String = ""
}

