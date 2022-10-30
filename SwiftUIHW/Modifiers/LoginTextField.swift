//
//  LoginTextField.swift
//  SwiftUIHW
//
//  Created by Павел Барташов on 26.10.2022.
//

import SwiftUI

struct LoginTextField: ViewModifier {
    private var roundedCornersShape: RoundedCornersShape {
        RoundedCornersShape(corners: corners, radius: 10)
    }
    @State var corners: UIRectCorner

    func body(content: Content) -> some View {
        content
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .padding(10)
            .background(roundedCornersShape
                .fill(Color.lightGray))
            .overlay(
                roundedCornersShape
                    .stroke(Color.gray)
            )
    }
}
