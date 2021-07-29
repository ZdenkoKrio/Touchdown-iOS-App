//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Zdenko Čepan on 28/07/2021.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout,
                      alignment: .center,
                      spacing: columnSpacing,
                      pinnedViews: [],
                      content: {
                        Section(
                            header: SectionView(rotateClockwise: false),
                            footer: SectionView(rotateClockwise: true)
                        ) {
                            ForEach(categories) { category in
                                CategoryItemView(category: category)
                            }
                        } // LOOP
                      }) // GRID
                .frame(height: 140)
                .padding(.vertical, 10)
                .padding(.horizontal, 15)
        }) // SCROLL
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
