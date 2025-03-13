//
//  SearchTextField.swift
//  SmartGroceryHub
//
//  Created by Phạm Trường Giang on 6/3/25.
//

import SwiftUI

struct SearchTextField: View {
   
    @State var placholder: String = "Placholder"
    @Binding var txt: String
    
    
    var body: some View {
        HStack(spacing: 15) {
           
            Image("search")
                .resizable()
                .scaledToFit()
                .frame(width: 12, height: 12)
           
            TextField(placholder, text: $txt)
                .font(.custom("Times New Roman", size: 17))
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .frame(minWidth: 0, maxWidth: .infinity)
        }
        .frame(height: 30)
        .padding(15)
        .background(Color(hex: "F2F3F2"))
        .cornerRadius(16)
    }
}

struct SearchTextField_Previews: PreviewProvider {
    @State static var txt: String = ""
    static var previews: some View {
        SearchTextField(placholder: "Search Store", txt: $txt)
            .padding(15)
    }
}
