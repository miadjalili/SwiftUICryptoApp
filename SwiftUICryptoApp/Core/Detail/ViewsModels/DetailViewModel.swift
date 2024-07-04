//
//  DetailViewModel.swift
//  SwiftUICryptoApp
//
//  Created by Miad Jalili on 2024-07-03.
//

import Foundation
import Combine


class DetailViewModel: ObservableObject{
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        coinDetailService.$coinDetails
            .sink { [weak self] returnedCoinDetails in
                print("Receive coin detail data ")
                print(returnedCoinDetails)
            }
            .store(in: &cancellables)
    }
    
}
