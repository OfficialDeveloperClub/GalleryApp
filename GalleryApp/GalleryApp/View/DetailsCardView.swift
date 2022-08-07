//
//  DetailsCardView.swift
//  GalleryApp
//
//  Created by Daniel Pustotin on 07.08.2022.
//

import SwiftUI

struct DetailsCardView: View {
    let card: Card

    var ns: Namespace.ID

    @EnvironmentObject private var model: Model

    @State private var viewState = CGSize.zero

    var body: some View {
        ZStack {
            ScrollView {
                Image(card.image)
                    .resizable()
                    .scaledToFill()
                    .matchedGeometryEffect(id: "\(card.id)-image", in: ns)
                    .frame(maxWidth: .infinity)

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
                        model.closeCard()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.title)
                            .foregroundColor(.secondary)
                            .padding(8)
                            .background(.ultraThinMaterial)
                            .clipShape(Circle())
                            .compositingGroup()
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
                .compositingGroup()
            }
        }
        .background {
            Rectangle()
                .fill(.ultraThinMaterial)
        }
        .cornerRadius(30)
        .matchedGeometryEffect(id: "\(card.id)-card", in: ns)
        .frame(width: 800, height: 900)
        .rotationEffect(.degrees(viewState.width / 40))
        .rotation3DEffect(.degrees(viewState.height / 40), axis: (x: 1, y: 0, z: 0), perspective: 1)
        .offset(x: viewState.width, y: viewState.height)
        .gesture(drag)
    }

    var drag: some Gesture {
        DragGesture()
            .onChanged { value in
                viewState = value.translation
            }
            .onEnded { value in
                if value.translation.height > 300 {
                    model.closeCard()
                } else {
                    withAnimation(.spring()) {
                        viewState = .zero
                    }
                }
            }
    }
}

struct CardView_Previews: PreviewProvider {
    @Namespace static var ns

    static var previews: some View {
        DetailsCardView(card: Card.list[0], ns: ns)
    }
}
