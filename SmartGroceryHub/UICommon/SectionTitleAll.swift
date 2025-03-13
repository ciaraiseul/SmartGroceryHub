//
//  SectionTitleAll.swift
//  SmartGroceryHub
//
//  Created by Phạm Trường Giang on 14/3/25.
//

import SwiftUI

struct SectionTitleAll: View {
    
    @State var title: String = "Title"
    @State var titleAll: String = "Title All"
    var didTap: (()->())?
    
    var body: some View {
        
        HStack{
            Text(title)
                .font(.custom("Times New Roman", size: 24))
                .foregroundColor(.primaryText)
            
            Spacer()
            
            Text(titleAll)
                .font(.custom("Times New Roman", size: 24))
                .foregroundColor(.primaryApp)
        }
        .frame(height: 40)
    }
}

#Preview {
    SectionTitleAll()
        .padding(20)
}
