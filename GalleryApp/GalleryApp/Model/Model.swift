//
//  Model.swift
//  GalleryApp
//
//  Created by Daniel Pustotin on 07.08.2022.
//

import SwiftUI

class Model: ObservableObject {
    @Published var isDetailShown: Bool = false
    
    @Published var selectedCard: Card?

    func closeCard() {
        withAnimation(.closeCard) {
            isDetailShown = false
            selectedCard = nil
        }
    }
}
