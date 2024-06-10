//
//  ActionButton.swift
//  BusinessCard
//
//  Created by Jeffrey Vanelderen on 10/06/2024.
//

import SwiftUI

struct ActionButton: View {
    let icon: String;
    let phoneNumber: String;
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.white)
        // In frame() -> Width is optional! Leave empty to let it take all space
            .frame(height: 40, alignment: .center)
            .padding(.horizontal, 20.0)
            .overlay {
                HStack {
                    Image(systemName: self.icon).foregroundStyle(.green)
                    Text(self.phoneNumber)
                }
            }
    }
}

#Preview {
    ActionButton(icon: "phone.fill", phoneNumber: "Phone number mock")
        // Dont show the full phone simulator, just the component
        .previewLayout(.sizeThatFits)
}
