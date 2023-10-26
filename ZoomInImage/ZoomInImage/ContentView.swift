//
//  ContentView.swift
//  ZoomInImage
//
//  Created by brad on 10/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            ImageZoomInView(
                uiimage: UIImage(named: "Mock") ?? UIImage()
            )
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
