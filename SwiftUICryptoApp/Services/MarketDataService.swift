//
//  MarketDataService.swift
//  SwiftUICryptoApp
//
//  Created by Miad Jalili on 2024-06-27.
//

import Foundation
import Combine


class MarketDataService {
    
    @Published var marketDate: MarketDataModel? = nil
    var marketDataSubscription: AnyCancellable?
    
    init() {
        getData()
    }
    
     func getData() {
        
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self](retunedGlobalData) in
                self?.marketDate = retunedGlobalData.data
                self?.marketDataSubscription?.cancel()
            })
           
    }
}
