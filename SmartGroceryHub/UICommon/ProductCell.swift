//
//  ProductCell.swift
//  SmartGroceryHub
//
//  Created by Phạm Trường Giang on 14/3/25.
//

import SwiftUI

struct ProductCell: View {
    
    var didAddCart: ( ()->() )?
    
    var body: some View {
        
        VStack{
            
            Image("banana")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 80)
            
            Spacer()
            
            Text("Chuối")
                .font(.custom("Times New Roman", size: 16))
                .foregroundColor(.primaryText)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            Text("1 nải, giá")
                .font(.custom("Times New Roman", size: 14))
                .foregroundColor(.secondaryText)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            VStack{
                Text("50,000vnd")
                    .font(.custom("Times New Roman", size: 18))
                    .foregroundColor(.primaryText)
                
               
                RoundButton(title: "Thêm Vào giỏ hàng", didTap: didAddCart)
                
            }
            
        }
        .padding(15)
        .frame(width: 180, height: 230)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.primaryText.opacity(0.5), lineWidth: 1)
        )
        
    }
}

#Preview {
    ProductCell()
}
