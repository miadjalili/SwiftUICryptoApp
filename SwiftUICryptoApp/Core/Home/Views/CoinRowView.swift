//
//  CoinRowView.swift
//  SwiftUICryptoApp
//
//  Created by Miad Jalili on 2024-06-23.
//

import SwiftUI


struct CoinRowView: View {
    
    let coin: CoinModel
    let shoeHoldingsColumn : Bool
    
    var body: some View {
        HStack(spacing: 0) {
            leftColumn
            Spacer()
            
            if shoeHoldingsColumn {
                centerColumn
            }
            
            rightColumn
            
        }
        .font(.subheadline)
    }
}


#Preview {
    
    CoinRowView(coin: DeveloperPreview.instance.coin, shoeHoldingsColumn: false)
        .previewLayout(.sizeThatFits)
}

#Preview {
        CoinRowView(coin: DeveloperPreview.instance.coin, shoeHoldingsColumn: true)
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    
}




extension CoinRowView {
    
    private var leftColumn: some View {
        HStack(spacing: 0) {
            Text ("\(coin.rank)")
                .font(.caption)
                .foregroundStyle(Color.theme.secondaryText)
                .frame(minWidth: 30)
            CoinImageView(coin: coin)
                .frame(width: 30,height: 30)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundStyle(Color.theme.accent)
        }
    }
    
    private var centerColumn: some View {
        VStack(alignment: .trailing)
        {
            Text(coin.currentHoldingsValue.asCurrencyWith2Decimals())
                .bold()
            Text((coin.currentHoldings ?? 0).asNumberString())
        }
    }
    
    private var rightColumn: some View {
        VStack(alignment : .trailing) {
            Text (coin.currentPrice.asCurrencyWith6Decimals())
                .bold()
                .foregroundStyle(Color.theme.accent)
            Text (coin.priceChangePercentage24H?.asPercentString() ?? "")
                .foregroundStyle((coin.priceChangePercentage24H ?? 0) >= 0 ? Color.theme.green : Color.theme.red)
        }
        .frame(width: UIScreen.main.bounds.width / 3.5 , alignment: .trailing)
    }
    
}
