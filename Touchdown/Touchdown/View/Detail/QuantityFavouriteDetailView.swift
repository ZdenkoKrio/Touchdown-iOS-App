//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Zdenko Čepan on 29/07/2021.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    // MARK: - Properties
    @State private var counter: Int = 0
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                feedback.impactOccurred()
                
                if counter > 0 {
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            }) // BUTTON
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                feedback.impactOccurred()
                
                if counter < 100 {
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            }) // BUTTON
            
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        }) // HSTACK
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
