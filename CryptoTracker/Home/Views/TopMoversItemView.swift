//
//  TopMoverItemView.swift
//  CryptoTracker
//
//  Created by Kresimir Ivanjko on 16.12.2023..
//

import SwiftUI

struct TopMoversItemView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            // Image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 34, height: 34)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            HStack(spacing: 2) {
                
                // Coin info
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("$20,330,00")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            // Coin percent change
            Text("+ 4.50%")
                .font(.title2)
                .foregroundColor(.green)
            
            
        }
        .frame(width: 140, height: 140)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.systemGray4), lineWidth: 3))
       
    }
}

struct TopMoverItemView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversItemView()
    }
}
