//
//  ContentView.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("KALKULATOR").font(.largeTitle)
            Spacer().frame(height: 100)
            Text("").padding().frame(width: 315.0, height: 60.0).border(Color.black, width: 2.0)
            HStack {
                ButtonView(text: "1", width: 100.0, height: 60.0)
                ButtonView(text: "2", width: 100.0, height: 60.0)
                ButtonView(text: "3", width: 100.0, height: 60.0)
            }
            HStack {
                ButtonView(text: "4", width: 100.0, height: 60.0)
                ButtonView(text: "5", width: 100.0, height: 60.0)
                ButtonView(text: "6", width: 100.0, height: 60.0)
            }
            HStack {
                ButtonView(text: "7", width: 100.0, height: 60.0)
                ButtonView(text: "8", width: 100.0, height: 60.0)
                ButtonView(text: "9", width: 100.0, height: 60.0)
            }
            HStack {
                ButtonView(text: "0", width: 100.0, height: 60.0)
                ButtonView(text: "+", width: 100.0, height: 60.0)
                ButtonView(text: "-", width: 100.0, height: 60.0)
            }
            HStack {
                ButtonView(text: "*", width: 100.0, height: 60.0)
                ButtonView(text: "/", width: 100.0, height: 60.0)
                ButtonView(text: "sin", width: 100.0, height: 60.0)
            }
            ButtonView(text: "Oblicz", width: 315.0, height: 60.0)
            
        }
    }
}

#Preview {
    ContentView()
}
