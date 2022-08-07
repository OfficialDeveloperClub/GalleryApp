//
//  GalleryCardView.swift
//  GalleryApp
//
//  Created by Daniel Pustotin on 07.08.2022.
//

import SwiftUI

struct GalleryCardView: View {
    let card: Card

    var ns: Namespace.ID

    var body: some View {
        ZStack {
            Image(card.image)
                .resizable()
                .scaledToFill()
                .matchedGeometryEffect(id: "\(card.id)-image", in: ns)
                .frame(width: 400, height: 400)
                .overlay(alignment: .bottom) {
                    Text(card.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .padding()
                        .background {
                            Rectangle()
                                .fill(.ultraThinMaterial)
                        }
                        .matchedGeometryEffect(id: "\(card.id)-title", in: ns)
                }
        }
        .cornerRadius(30)
        .matchedGeometryEffect(id: "\(card.id)-card", in: ns)
    }
}

struct GalleryCardView_Previews: PreviewProvider {
    @Namespace static var ns

    static var previews: some View {
        GalleryCardView(card: Card.list[0], ns: ns)
    }
}
