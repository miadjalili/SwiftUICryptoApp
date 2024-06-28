//
//  XMarkButton.swift
//  SwiftUICryptoApp
//
//  Created by Miad Jalili on 2024-06-28.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button  {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
        }

    }
}

#Preview {
    XMarkButton()
        .previewLayout(.sizeThatFits)
}
