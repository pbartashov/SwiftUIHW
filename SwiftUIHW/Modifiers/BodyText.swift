//
//  BodyText.swift
//  SwiftUIHW
//
//  Created by Павел Барташов on 25.10.2022.
//

import SwiftUI

struct BodyText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
            .background(Color.white)
    }
}
