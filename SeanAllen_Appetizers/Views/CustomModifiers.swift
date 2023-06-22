//
//  CustomModifiers.swift
//  SeanAllen_Appetizers
//
//  Created by Batson Seales on 6/22/23.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}
