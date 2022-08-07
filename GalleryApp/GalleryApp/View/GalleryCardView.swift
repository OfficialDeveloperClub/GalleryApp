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
        Image(card.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 400, height: 400)
            .clipped()
            .matchedGeometryEffect(id: "\(card.id)-image", in: ns)
            .overlay(alignment: .bottom) {
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .clipped()
                    .padding()
                    .background {
                        Rectangle()
                            .fill(.ultraThinMaterial)
                    }
                    .matchedGeometryEffect(id: "\(card.id)-title", in: ns)
            }
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .matchedGeometryEffect(id: "\(card.id)-card", in: ns)
    }
}

struct GalleryCardView_Previews: PreviewProvider {
    @Namespace static var ns

    static var previews: some View {
        GalleryCardView(card: Card.list[0], ns: ns)
    }
}
