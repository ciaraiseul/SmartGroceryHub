//
//  ProductDetailView.swift
//  SmartGroceryHub
//
//  Created by Phạm Trường Giang on 20/3/25.
//

import SwiftUI

struct ProductDetailView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack{
            VStack{
                
                HStack{
                    Button{
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                    }
                    
                    Spacer()
                    
                }
                
                Spacer()
            }
            .padding(.top, .topInsets)
            .padding(.horizontal, 20)
            
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    ProductDetailView()
}
