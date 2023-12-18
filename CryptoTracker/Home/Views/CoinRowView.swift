//
//  CoinRowView.swift
//  CryptoTracker
//
//  Created by Kresimir Ivanjko on 16.12.2023..
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
    @StateObject var viewModel: HomeViewModel
    let coin: Coin
    
    var body: some View {
        HStack {
            
            // MARK: Market Cap Rank
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundColor(.gray)
            
            // MARK: Coin Image
            Image(systemName: "circle")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            // MARK: Coin Name Info
            VStack(alignment: .leading, spacing: 4) {
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            // MARK: Coin Price Info
            
            VStack(alignment: .trailing, spacing: 4) {
                Text("\(coin.currentPrice)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text("\(coin.priceChange24H)")
                    .font(.caption)
                    .foregroundColor(.red)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
            
            
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

//struct CoinRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinRowView()
//    }
//}
