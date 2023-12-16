//
//  HomeView.swift
//  CryptoTracker
//
//  Created by Kresimir Ivanjko on 16.12.2023..
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // MARK: Top Movers View
                TopMoversView()
                
                Divider()
                
                // MARK: All Coins Move
                AllCoinsView()
            }
            .navigationTitle("Live Prices")
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
