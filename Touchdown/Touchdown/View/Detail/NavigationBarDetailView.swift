//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Zdenko Čepan on 28/07/2021.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        HStack {
            Button(action: {
                feedback.impactOccurred()
                
                withAnimation(.easeIn) {
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(.white)
                    .font(.title)
            }) // BUTTON
            
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "cart")
                    .foregroundColor(.white)
                    .font(.title)
            }) // BUTTON
        } // HSTACK
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
