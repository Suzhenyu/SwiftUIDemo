//
//  MenuDemo.swift
//  SwiftUIDemo
//
//  Created by Meng on 2021/5/8.
//

import SwiftUI

struct MenuView: View {
    @State var navigatingPrimary = false
    @State var presentingSecondary = false
    
    var body: some View {
        NavigationView {
            VStack {
                Menu {
                    Button("Navigation 跳转") {
                        self.navigatingPrimary = true
                    }
                    
                    Button("Present 跳转") {
                        self.presentingSecondary = true
                    }
                } label: {
                    Label("跳转", systemImage: "paperplane")
                }
                .background(
                    NavigationLink(
                        destination: PrimaryView(),
                        isActive: $navigatingPrimary) {
                        EmptyView()
                    }
                )
                .sheet(isPresented: $presentingSecondary, content: {
                    SecondaryView(presentedAsModal: $presentingSecondary)
                })
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
