//
//  ContentView.swift
//  BusinessCard
//
//  Created by Jeffrey Vanelderen on 10/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Via https://flatuicolors.com/palette/defo
            // And https://www.uicolor.io/
            Color(UIColor(red: 0.20, green: 0.60, blue: 0.86, alpha: 1.00)).ignoresSafeArea(.all)
            VStack {
                Image("jvan")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 200, alignment: .center).clipShape(Circle())
                    .overlay(Circle().stroke(.white, lineWidth: 2))
                Text("Name Lastname")
                    .bold()
                    .font(.title)
                    .foregroundStyle(.white)
                Text("React Native & iOS Developer")
                    .foregroundStyle(.white).font(.system(size: 18))
                
                Divider()
                
                // Extracted Subview - into its own file: ActionButton.swift
                ActionButton(icon: "phone.fill", phoneNumber: "+32 123 45 67 89")
                ActionButton(icon: "envelope.fill", phoneNumber: "firstname.name@acagroup.be")
                
            }
        }
    }
}

#Preview {
    ContentView()
}


