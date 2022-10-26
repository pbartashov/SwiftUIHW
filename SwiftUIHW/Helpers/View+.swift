//
//  View+.swift
//  SwiftUIHW
//
//  Created by Павел Барташов on 25.10.2022.
//

import SwiftUI

extension View {
//https://forums.swift.org/t/conditionally-apply-modifier-in-swiftui/32815/28
    @ViewBuilder func `if`<TrueContent: View, FalseContent: View>(
        _ condition: Bool,
        then trueContent: (Self) -> TrueContent,
        else falseContent: (Self) -> FalseContent
    ) -> some View {
        if condition {
            trueContent(self)
        } else {
            falseContent(self)
        }
    }
}
