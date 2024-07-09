//
//  HomeView.swift
//  SwiftUICryptoApp
//
//  Created by Miad Jalili on 2024-06-23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var vm: HomeViewModel
    @State private var showPortfolio: Bool = false // animate right
    @State private var showPortfolioView : Bool = false
    @State private var showSettingView: Bool = false
    @State private var selectedCoin: CoinModel? = nil
    @State private var showDetailView: Bool = false
    
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.theme.background
                    .ignoresSafeArea()
                    .sheet(isPresented: $showPortfolioView) {
                        PortfolioView()
                    }
                
                VStack {
                    homeHeader
                    HomeStatsView(showPortfolio: $showPortfolio)
                    SearchBarView(searchText: $vm.searchText)
                    columnTitles
                    
                    if !showPortfolio {
                        allCoinList
                            .transition(.move(edge: .leading))
                    }
                    if showPortfolio {
                        portfolioCoinList
                            .transition(.move(edge: .trailing))
                    }
                    Spacer(minLength: 0)
                }
                .sheet(isPresented: $showSettingView) {
                    SettingsView()
                }
            }
            .navigationDestination(isPresented: $showDetailView) {
                DetailLoadingView(coin: $selectedCoin)
            }
        }
    }
}

#Preview {
    NavigationStack {
        HomeView()
            .toolbar(.hidden)
    }
    .environmentObject( DeveloperPreview.instance.homeVM)
   
  
 
}


extension HomeView {
    
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                .animation(.none)
                .onTapGesture {
                    if showPortfolio {
                           showPortfolioView.toggle()
                    } else {
                        showSettingView.toggle()
                    }
                }
                .background(
                    CircleButtonAnimationView(animate: $showPortfolio)
                )
            Spacer()
            Text(showPortfolio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
                .animation(.none)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
    
    private var allCoinList : some View {
        
        List {
            ForEach(vm.allCoins) { coin in
                
                CoinRowView(coin: coin, shoeHoldingsColumn: false)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
                    .onTapGesture {
                        segue(coin: coin)
                    }
                
                
                
            }
        }
        .listStyle(.plain)
        .refreshable {
            vm.reloadData()
        }
    }
    
    
    private var portfolioCoinList : some View {
        
        List {
            ForEach(vm.portfolioCoins) { coin in
                CoinRowView(coin: coin, shoeHoldingsColumn: true)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
                
                    .onTapGesture {
                        segue(coin: coin)
                    }
            }
        }
        .listStyle(.plain)
    }
    
    private func segue(coin: CoinModel) {
        selectedCoin = coin
        showDetailView.toggle()
        
    }
    private var columnTitles : some View {
        
        HStack {
            HStack(spacing : 4) {
                Text ("Coins")
                Image(systemName: "chevron.down")
                    .opacity((vm.sortOption == .rank || vm.sortOption == .rankReversed) ? 1.0 : 0.0)
                    .rotationEffect(Angle(degrees: vm.sortOption == .rank ? 0 :180))
            }
            .onTapGesture {
                withAnimation(.default) {
                    vm.sortOption = vm.sortOption == .rank ? .rankReversed : .rank
                }
               
            }
            
            Spacer()
            if showPortfolio {
                HStack(spacing : 4) {
                    Text("Holdings")
                    Image(systemName: "chevron.down")
                        .opacity((vm.sortOption == .holdings || vm.sortOption == .holdingReverse) ? 1.0 : 0.0)
                        .rotationEffect(Angle(degrees: vm.sortOption == .holdings ? 0 :180))
                }
                .onTapGesture {
                    withAnimation(.default) {
                        vm.sortOption = vm.sortOption == .holdings ? .holdingReverse : .holdings
                    }
                }
        
            }
            
            HStack(spacing : 4) {
                Text ("Price")
                Image(systemName: "chevron.down")
                    .opacity((vm.sortOption == .price || vm.sortOption == .priceReversed) ? 1.0 : 0.0)
                    .rotationEffect(Angle(degrees: vm.sortOption == .price ? 0 :180))
            }
            .onTapGesture {
                withAnimation(.default) {
                    vm.sortOption = vm.sortOption == .price ? .priceReversed : .price
                }
            }
                .frame(width: UIScreen.main.bounds.width / 3.5 , alignment: .trailing)
            
            Button {
                withAnimation(.linear(duration: 2.0)) {
                    vm.reloadData()
                }
            } label: {
                Image(systemName: "goforward")
            }
            .rotationEffect(Angle(degrees: vm.isLoading ? 360 : 0), anchor: .center)

        }
        .font(.caption)
        .foregroundColor(Color.theme.secondaryText)
        .padding(.horizontal)
    }
    
}
