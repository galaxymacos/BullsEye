//
//  ContentView.swift
//  BullsEye
//
//  Created by Xun Ruan on 2021/6/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("🎯🎯🎯Put the bullseye as close as you can")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)    // only works to view, so it should be after bold() and kerning(2.0) method because those can only be applied to textview
                .lineSpacing(0.4)
                .font(.footnote)
            HStack {
                Text("1")
                    .font(.body)
                    .bold()
                Slider(value: .constant(50.0), in:1.0...100.0)
                Text("100")
                    .font(.body)
                    .bold()
                    }
            Text("89")
                .kerning(-1.0)  // negative kerning value makes the letter closer to the view border
                .bold()
                .fontWeight(.black)
                .font(.largeTitle)
            Button(action: {}) {    // Add action to the button
                Text("Hit me")
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}

