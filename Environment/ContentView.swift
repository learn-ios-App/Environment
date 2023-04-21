//
//  ContentView.swift
//  Environment
//
//  Created by 渡邊魁優 on 2023/04/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var number: NumberData
    @State var isActive = false
    var body: some View {
        VStack {
            Text("\(number.number)")
            
            Button(action: {
                number.number += 1
                isActive = true
            }) {
                Text("+")
            }
        }
        .sheet(isPresented: $isActive) {
            SubView()
        }
    }
}

struct SubView: View {
    @EnvironmentObject var number: NumberData
    var body: some View {
        VStack {
            Text("\(number.number)")
            
            Button(action: {
                number.number += 1
            }) {
                Text("+")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(NumberData())
    }
}
