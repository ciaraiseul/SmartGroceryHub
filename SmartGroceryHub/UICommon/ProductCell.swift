//
//  ProductCell.swift
//  SmartGroceryHub
//
//  Created by Phạm Trường Giang on 14/3/25.
//

import SwiftUI
import SDWebImageSwiftUI
struct ProductCell: View {
    
    @State var pObj: ProductModel = ProductModel(dict: [:])
    var didAddCart: ( ()->() )?
    
    var body: some View {
        
        VStack{
            
            WebImage(url: URL(string: pObj.image ))
                .resizable()
                .indicator(.activity) // Activity Indicator
                .transition(.fade(duration: 0.5))
                .scaledToFit()
                .frame(width: 100, height: 80)
            
            Spacer()
            
            Text(pObj.name)
                .font(.custom("Times New Roman", size: 16))
                .foregroundColor(.primaryText)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            Text("\(pObj.unitValue)\(pObj.unitName), giá")
                .font(.custom("Times New Roman", size: 14))
                .foregroundColor(.secondaryText)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            VStack{
                Text("$\(pObj.offerPrice ?? pObj.price, specifier: "%.2f" )")
                    .font(.custom("Times New Roman", size: 18))
                    .foregroundColor(.primaryText)
                
               
                RoundButton(title: "Thêm Vào giỏ hàng", didTap: didAddCart)
                    
                
            }
            
        }
        .padding(15)
        .frame(width: 200, height: 230)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.placeholder.opacity(0.5), lineWidth: 1)
        )
        
    }
}

#Preview {
    ProductCell(pObj: ProductModel(dict: ["prod_id": 6,
                                          "cat_id": 1,
                                          "brand_id": 1,
                                          "type_id": 1,
                                          "name": "Red Apple",
                                          "detail": "Apples contain key nutrients, including fiber and antioxidants. They may offer health benefits, including lowering blood sugar levels and benefitting heart health.",
                                          "unit_name": "kg",
                                          "unit_value": "1",
                                          "nutrition_weight": "182g",
                                          "price": 1.99,
                                          "image": "http://localhost:3001/img/product/202307310951365136W6nJvPCdzQ.png",
                                          "cat_name": "Frash Fruits & Vegetable",
                                          "type_name": "Pulses",
                                          "is_fav": 1,
                                          "avg_rating": 0]))
}
