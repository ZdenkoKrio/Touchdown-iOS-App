//
//  ContentView.swift
//  Touchdown
//
//  Created by Zdenko Čepan on 26/07/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top,
                             UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.10), radius: 10, x: 0, y: 10)
                
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(minHeight: 256)
                            .padding(.vertical, 20)
                            
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout,
                                  spacing: 15, pinnedViews: [], content: {
                                    ForEach(products) { product in
                                        ProductItemView(product: product)
                                    } // LOOP
                                  }) // GRID
                            .padding(15)
                        
                        TitleView(title: "Brands")
                        
                        BrandGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    } // VSTACK
                }) // SCROLL
                
            } // VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } // ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
