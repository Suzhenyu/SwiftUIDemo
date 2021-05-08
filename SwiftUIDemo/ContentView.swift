//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Meng on 2021/5/8.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("菜单 Menu", destination: MenuView())
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
