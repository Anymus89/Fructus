//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Manuel Martinez on 03/07/22.
//

import SwiftUI

struct FruitHeaderView: View {
    
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical , 20)
                .scaleEffect(isAnimating ? 1 : 0.6)
        }// Zstack
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeInOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
