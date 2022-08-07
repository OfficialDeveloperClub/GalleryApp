//
//  GalleryView.swift
//  GalleryApp
//
//  Created by Daniel Pustotin on 07.08.2022.
//

import SwiftUI

struct GalleryView: View {

    var ns: Namespace.ID

    @EnvironmentObject var model: Model

    let columns = [
        GridItem(.adaptive(minimum: 400))
    ]

    var body: some View {
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(Card.list) { card in
                if card != model.selectedCard {
                    GalleryCardView(card: card, ns: ns)
                        .onTapGesture {
                            withAnimation(.openCard) {
                                model.selectedCard = card
                                model.isDetailShown = true
                            }
                        }
                } else {
                    Color(.clear)
                        .frame(width: 400, height: 400)
                }
            }
        }
        .padding()
    }
}

struct GalleryView_Previews: PreviewProvider {
    @Namespace static var ns

    static var previews: some View {
        GalleryView(ns: ns)
            .environmentObject(Model())
    }
}
