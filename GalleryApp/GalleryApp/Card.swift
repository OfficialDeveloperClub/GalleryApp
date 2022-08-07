//
//  Card.swift
//  GalleryApp
//
//  Created by Daniel Pustotin on 07.08.2022.
//

import Foundation

class Card: Identifiable, Equatable {
    static func == (lhs: Card, rhs: Card) -> Bool {
        lhs.id == rhs.id
    }

    var id = UUID()

    private(set) var title: String
    private(set) var body: String

    private(set) var imageURL: String

    init(_ title: String, text body: String, image imageURL: String) {
        self.title = title
        self.body = body
        self.imageURL = imageURL
    }
}
