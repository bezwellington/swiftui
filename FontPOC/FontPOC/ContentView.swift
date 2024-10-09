//
//  ContentView.swift
//  FontPOC
//
//  Created by Wellington on 08/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            TextView(text: "OpenSans-Light",
                     fontName: .light,
                     fontSize: 24)
            
            TextView(text: "OpenSans-Regular",
                     fontName: .regular,
                     fontSize: 24)
            
            TextView(text: "OpenSans-Italic",
                     fontName: .italic,
                     fontSize: 24)
            
            TextView(text: "OpenSans-SemiBold",
                     fontName: .semiBold,
                     fontSize: 24)
            
            TextView(text: "OpenSans-Bold",
                     fontName: .bold,
                     fontSize: 24)
            
            TextView(text: "OpenSans-ExtraBold",
                     fontName: .extraBoold,
                     fontSize: 24)
            
            Spacer()
            
            ButtonView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct TextView: View {
    
    var text: String
    var fontName: Font
    var fontSize: CGFloat
    
    var body: some View {
        Text(text)
            .font(.custom(fontName.rawValue, size: fontSize))
            .padding()
    }
}

struct ButtonView: View {
    var body: some View {
        Button("Listar fontes no console") {
            for family in UIFont.familyNames {
                print("Font family: \(family)")
                for names in UIFont.fontNames(forFamilyName: family) {
                    print("Font names: \(names)")
                }
            }
        }
    }
}

enum Font: String {
    case light = "OpenSans-Light"
    case regular = "OpenSans-Regular"
    case italic = "OpenSans-Italic"
    case semiBold = "OpenSans-SemiBold"
    case bold = "OpenSans-Bold"
    case extraBoold = "OpenSans-ExtraBold"
}
