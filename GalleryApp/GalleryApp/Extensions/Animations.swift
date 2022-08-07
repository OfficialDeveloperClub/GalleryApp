//
//  Animations.swift
//  GalleryApp
//
//  Created by Daniel Pustotin on 07.08.2022.
//

import SwiftUI

extension Animation {
    static let openCard: Animation = .spring(response: 0.3, dampingFraction: 0.9, blendDuration: 0.7)
    
    static let closeCard: Animation = .spring(response: 0.4, dampingFraction: 0.7, blendDuration: 0.6)
}
