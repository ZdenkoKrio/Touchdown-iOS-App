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
        FooterView()
            .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
