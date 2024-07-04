//
//  DetailView.swift
//  SwiftUICryptoApp
//
//  Created by Miad Jalili on 2024-07-03.
//

import SwiftUI



struct DetailLoadingView: View {
    @Binding var  coin: CoinModel?
    
    var body: some View {
        
        ZStack {
            if let coin = coin {
                DetailView(coin: coin)
            }
        }
    }
}

struct DetailView: View {
    
    @StateObject var vm : DetailViewModel
    
    init(coin: CoinModel) {
        _vm = StateObject(wrappedValue: DetailViewModel(coin: coin))
        print("DetailView init \(coin.name)")
    }
    
    var body: some View {
        Text("test")
    }
}

#Preview {
    DetailView(coin: DeveloperPreview.instance.coin )
}
