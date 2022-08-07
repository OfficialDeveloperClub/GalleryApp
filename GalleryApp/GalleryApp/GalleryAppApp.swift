//
//  GalleryAppApp.swift
//  GalleryApp
//
//  Created by Daniel Pustotin on 07.08.2022.
//

import SwiftUI

@main
struct GalleryAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Model())
        }
    }
}
