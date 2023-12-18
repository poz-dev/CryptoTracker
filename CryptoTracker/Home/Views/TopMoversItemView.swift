//
//  TopMoverItemView.swift
//  CryptoTracker
//
//  Created by Kresimir Ivanjko on 16.12.2023..
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin: Coin
    
    var body: some View {
        VStack(alignment: .leading) {
            
            // Image
            Image(systemName: "circle")
                .resizable()
                .frame(width: 34, height: 34)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            HStack(spacing: 2) {
                
                // Coin info
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("$\(coin.currentPrice)")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            // Coin percent change
            Text("\(coin.priceChangePercentage24H)")
                .font(.title2)
                .foregroundColor(.green)
            
            
        }
        .frame(width: 140, height: 140)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.systemGray4), lineWidth: 3))
       
    }
}

//struct TopMoverItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversItemView()
//    }
//}
