//
//  HeaderText.swift
//  SwiftUIHW
//
//  Created by Павел Барташов on 25.10.2022.
//

import SwiftUI

struct HeaderText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .bold()
            .background(Color.cyan)
    }
}
