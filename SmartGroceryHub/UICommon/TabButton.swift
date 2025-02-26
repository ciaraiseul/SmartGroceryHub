//
//  TabButton.swift
//  SmartGroceryHub
//
//  Created by Phạm Trường Giang on 24/2/25.
//

import SwiftUI

struct TabButton: View {
    
    @State var title: String = "Title"
    @State var icon: String = "store_tab"
    var isSelect: Bool = false
    var didSelect: (()->())
    
    var body: some View {
        Button{
            debugPrint("Tab Button Tap")
            didSelect()
        } label: {
            VStack{
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                
                Text(title)
                    .font(.custom("Times New Roman", size: 16))
            }
            
        }
        .foregroundColor(isSelect ? .primaryApp : .primaryText)
        .frame(minWidth: 0, maxWidth: .infinity)
    }
}

#Preview {
    TabButton{
        print("Test")
    }
}
