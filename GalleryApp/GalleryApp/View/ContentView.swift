//
//  ContentView.swift
//  GalleryApp
//
//  Created by Daniel Pustotin on 07.08.2022.
//

import SwiftUI

struct ContentView: View {
    @Namespace var ns

    @EnvironmentObject private var model: Model

    var body: some View {
        ZStack {
            ScrollView {
                GalleryView(ns: ns)
            }
            if model.isDetailShown, let card = model.selectedCard {
                DetailsCardView(card: card, ns: ns)
            }
        }
        .background {
            Image("background")
                .resizable()
                .scaledToFill()
                .overlay {
                    Rectangle()
                        .fill(.thinMaterial)
                }
                .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Model())
    }
}
