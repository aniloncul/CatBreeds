//
//  ErrorView.swift
//  Cat Bible
//
//  Created by Anıl Öncül on 23.09.2024.
//

import SwiftUI

struct ErrorView: View {
    @ObservedObject var viewModel: BreedFetcher
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ErrorView(viewModel: BreedFetcher())
}
