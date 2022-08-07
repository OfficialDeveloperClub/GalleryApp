//
//  Model.swift
//  GalleryApp
//
//  Created by Daniel Pustotin on 07.08.2022.
//

import Foundation

class Model: ObservableObject {
    @Published var isDetailShown: Bool = false

    @Published var selectedCard: Card?
}
