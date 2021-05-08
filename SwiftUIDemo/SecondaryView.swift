//
//  SecondaryView.swift
//  SwiftUIDemo
//
//  Created by Meng on 2021/5/8.
//

import SwiftUI

struct SecondaryView: View {
    @Binding var presentedAsModal: Bool
    
    var body: some View {
        Button("dismiss") { self.presentedAsModal = false }
    }
}

struct SecondaryView_Previews: PreviewProvider {
    static var previews: some View {
        SecondaryView(presentedAsModal: .constant(true))
    }
}
