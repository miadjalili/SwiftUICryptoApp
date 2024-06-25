//
//  PreviewProvider.swift
//  SwiftUICryptoApp
//
//  Created by Miad Jalili on 2024-06-23.
//

import Foundation
import SwiftUI

extension PreviewProvider {
 
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
    
}

class DeveloperPreview {
    
    static let instance = DeveloperPreview()
    private init() { }
    
//    let homeVM = HomeViewModel()
//    
//    let stat1 = StatisticModel(title: "Market Cap", value: "$12.5Bn", percentageChange: 25.34)
//    let stat2 = StatisticModel(title: "Total Volume", value: "$1.23Tr")
//    let stat3 = StatisticModel(title: "Portfolio Value", value: "$50.4k", percentageChange: -12.34)
    
    let coin = CoinModel(
       id: "bitcoin",
       symbol: "btc",
       name: "Bitcoin",
       image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
       currentPrice: 63174,
       marketCap: 1245764466811,
       marketCapRank: 1,
       fullyDilutedValuation: 1326911216784,
       totalVolume: 11279189348,
       high24H: 64493,
       low24H: 62922,
       priceChange24H: -1278.1648905072143,
       priceChangePercentage24H: -1.98311,
       marketCapChange24H: -24188103565.563232,
       marketCapChangePercentage24H:  -1.90465,
       circulatingSupply: 19715753,
       totalSupply: 21000000,
       maxSupply: 21000000,
       ath: 73738,
       athChangePercentage:  -14.62115,
       athDate: "2024-03-14T07:10:36.635Z",
       atl: 67.81,
       atlChangePercentage: 92744.01834,
       atlDate: "2013-07-06T00:00:00.000Z",
       lastUpdated: "2024-06-24T01:34:16.105Z" ,
       sparklineIn7D: SparklineIn7D(price: [
        66641.99217178098,
        66514.63060824397,
        66329.56291781383,
        66302.98998507581,
        66186.82711763315,
        66387.43705463625,
        66316.43822176804,
        66125.16200676955,
        66115.41833900017,
        66133.8165881875,
        65894.8767269964,
        65878.40139482204,
        65760.62632465447,
        65540.57881631704,
        65090.83365542065,
        65354.034043857726,
        65471.1326744747,
        65818.86607236542,
        66652.54577290417,
        66872.8927002243,
        66616.73305143627,
        66472.06973831057,
        66557.71845685582,
        66687.52203762387,
        66468.50010784055,
        65856.4069319288,
        65056.011073646834,
        65403.92833454201,
        65491.76817165971,
        65755.9080857081,
        65696.55126850387,
        65509.79027498574,
        65654.08891945296,
        65717.79407252691,
        65464.13786774141,
        65416.360879120395,
        65318.90972825939,
        65213.83403123367,
        64758.66885462017,
        64611.343109038404,
        64598.74112924088,
        64547.320986855775,
        64585.65923248299,
        64606.83457380056,
        64258.666886722174,
        64835.01739068255,
        65100.64714578363,
        65235.40013565338,
        65158.982657156404,
        65170.06034309333,
        65042.30066609199,
        65355.670326954125,
        65493.00059949955,
        65458.74932170171,
        65417.871156341,
        65610.94206227204,
        65315.15569774115,
        65277.11074896952,
        65291.43542468813,
        65483.802254736074,
        65219.56895365389,
        65189.21684374291,
        65058.24232351352,
        64902.73376006446,
        64906.621621984006,
        64933.899205007816,
        65026.40932766913,
        65004.98040050766,
        64877.60681052182,
        64873.95291359378,
        65020.94385890328,
        64792.538220279435,
        64961.6067876583,
        65042.84097902661,
        64977.72701699426,
        65195.81909733312,
        65100.93077654075,
        65243.50274316975,
        65561.7337128,
        65383.29084643189,
        65840.25205222526,
        65672.65819102903,
        65704.67015948959,
        66174.29788218117,
        66060.8613509961,
        65815.79326749592,
        65108.57055554049,
        64936.211575100635,
        64772.941094318725,
        64783.67146526995,
        64985.49896634374,
        65109.290667227484,
        64923.880176925726,
        65035.57540504442,
        65045.03922017821,
        64963.97751724568,
        64809.214057093726,
        64793.573314332454,
        64935.17926407917,
        64751.45400285047,
        64507.838105739196,
        64627.56036563708,
        64593.29968332353,
        64590.15844182835,
        64173.31099868226,
        63594.26911447389,
        64046.3449561359,
        63846.18781082089,
        63722.21793742226,
        63669.78570736624,
        63690.72334757004,
        64294.6723909302,
        63622.82252414017,
        63554.65785203653,
        63656.74567708873,
        64169.3105857333,
        64171.02188714963,
        64110.84665396747,
        64059.951232110114,
        64121.341620763844,
        64149.79941613572,
        64034.7032180249,
        64103.97475998707,
        64265.91753316312,
        64297.50368977791,
        64304.87692550471,
        64398.10143521315,
        64378.66739728065,
        64483.51809622986,
        64261.69944663091,
        64290.183314165646,
        64277.38602966835,
        64224.34024492053,
        64267.70321625668,
        64243.037258537115,
        64256.05910705532,
        64301.33113475023,
        64290.929594484216,
        64235.94407147014,
        64230.78429691414,
        64273.641462900436,
        64260.86742280595,
        64286.67023391514,
        64279.47178705679,
        64260.022910575986,
        64440.80850152625,
        64452.94024879487,
        64486.931493888806,
        64404.71057801942,
        64353.7552757083,
        64351.947318589635,
        64347.37986564433,
        64399.94868716348,
        64351.709790049725,
        64370.96855325969,
        64266.81469937438,
        64307.8844331697,
        64339.995374065315,
        64250.62353252884,
        64149.744321753045,
        64053.26372900527,
        63914.22237927373,
        64081.30985160457,
        64076.681950523525,
        64095.84477731661,
        63734.72850598472,
        63761.10415179397,
        63596.168862692524
       ]),
       priceChangePercentage24HInCurrency: -1.9831113664189794,
       currentHoldings: 1.5)
    
}

