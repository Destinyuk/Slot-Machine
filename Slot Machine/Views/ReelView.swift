//
//  ReelView.swift
//  Slot Machine
//
//  Created by Ash on 10/05/2024.
//

import SwiftUI

struct ReelView: View {
    var body: some View {
        Image("gfx-reel")
            .resizable()
            .modifier(ImageModifier())
    }
}

#Preview {
    ReelView()
}
