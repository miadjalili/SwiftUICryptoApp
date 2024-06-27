//
//  StatisticView.swift
//  SwiftUICryptoApp
//
//  Created by Miad Jalili on 2024-06-27.
//

import SwiftUI

struct StatisticView: View {
    
    let stat: StatisticModel
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(stat.title)
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
            Text(stat.value)
                .font(.headline)
                .foregroundColor(Color.theme.accent)
            
            HStack(spacing: 4) {
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(
                        Angle(degrees:(stat.percentageChange ?? 0) >= 0 ? 0 : 180))
                
                Text(stat.percentageChange?.asPercentString() ?? "")
                    .font(.caption)
                    .bold()
            }
            .foregroundColor((stat.percentageChange ?? 0) >= 0 ? Color.theme.green : Color.theme.red)
            .opacity(stat.percentageChange == nil ? 0.0 : 1.0)
        }
    }
}

#Preview {
    
    Group {
        StatisticView(stat: DeveloperPreview.instance.stat1)
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
        StatisticView(stat: DeveloperPreview.instance.stat2)
            .previewLayout(.sizeThatFits)
        StatisticView(stat: DeveloperPreview.instance.stat3)
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
    
    
}
