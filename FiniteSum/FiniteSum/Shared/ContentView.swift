//
//  ContentView.swift
//  Shared
//
//  Created by Derek Rhea on 2/8/21.
//

import SwiftUI

struct ContentView: View {
    @State var calculator = FiniteSumCalculator()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
        Button("Press me", action:{calculator.sumFunction1()})
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
