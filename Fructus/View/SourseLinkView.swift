//
//  SourseLinkView.swift
//  Fructus
//
//  Created by Manuel Martinez on 03/07/22.
//

import SwiftUI

struct SourseLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link(destination: URL(string: "https://wikipedia.com")!) {
                    HStack {
                        Text("Wikipedia")
                        Image(systemName: "arrow.up.right.square")
                    }
                }
            }
            .font(.footnote)
        }
    }
}

struct SourseLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourseLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
