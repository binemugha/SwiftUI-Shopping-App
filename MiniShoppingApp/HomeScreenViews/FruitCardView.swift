//
//  FruitCardView.swift
//  MiniShoppingApp
//
//  Created by Benjamin Inemugha  on 05/08/2024.
//

import SwiftUI

let dummyFruit: FruitModel = FruitModel(id: 1, title: .apple, image: "apple", price: "3.44", color: "1")

struct FruitCardView: View {
    let fruit: FruitModel

    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title.rawValue)
                    .fontWeight(.bold)
                    .font(.system(.title3))
                    .foregroundStyle(.black)
                Text(fruit.price)
                    .font(.system(.title3))
                    .foregroundStyle(.black.opacity(0.7))
                Spacer()
            }
            .padding()
            .frame(width: 175, height: 150, alignment: .center)
            .background(Color(fruit.color))
            .clipShape(RoundedRectangle(cornerRadius: 30))
            Image(fruit.image).resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 110).offset(y: 60)
        }
        .frame(width: 175, height: 250, alignment: .center)
    }
}

#Preview {
    FruitCardView(fruit: dummyFruit)
}
