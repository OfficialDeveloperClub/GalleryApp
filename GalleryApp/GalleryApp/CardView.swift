//
//  CardView.swift
//  GalleryApp
//
//  Created by Daniel Pustotin on 07.08.2022.
//

import SwiftUI

struct CardView: View {

    let card: Card

    var ns: Namespace.ID

    @EnvironmentObject var model: Model

    var body: some View {
        ZStack {
            ScrollView {
                AsyncImage(url: URL(string: card.imageURL)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .matchedGeometryEffect(id: "\(card.id)-image", in: ns)
                        .frame(maxWidth: .infinity)
                } placeholder: {
                    ProgressView()
                }

                Text(card.body)
                    .font(.title3)
                    .padding()
            }
            .overlay(alignment: .top) {
                HStack {
                    Text(card.title)
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .underline()


                    Spacer()

                    Button {
                        withAnimation(.closeCard) {
                            model.isDetailShown = false
                            model.selectedCard = nil
                        }
                    } label: {
                        Image(systemName: "xmark")
                            .font(.title)
                            .foregroundColor(.secondary)
                            .padding(8)
                            .background(.ultraThinMaterial)
                            .clipShape(Circle())
                    }
                }
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
        .background {
            Rectangle()
                .fill(.ultraThinMaterial)
        }
        .cornerRadius(30)
        .matchedGeometryEffect(id: "\(card.id)-card", in: ns)
        .frame(width: 800, height: 900)

    }
}

struct CardView_Previews: PreviewProvider {
    @Namespace static var ns

    static var previews: some View {
        CardView(card: Card.list[0], ns: ns)
    }
}
