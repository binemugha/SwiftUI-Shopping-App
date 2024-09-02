//
//  HomeScreenView.swift
//  MiniShoppingApp
//
//  Created by Benjamin Inemugha  on 05/08/2024.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: "line.3.horizontal")
                Spacer()
                Image(systemName: "cart.badge.plus")
            }
            .font(.system(.title3))

            Text("Hey")
                .font(.title)
                .fontWeight(.bold)
            Text("Find fresh fruits that you want")

            RoundedRectangle(cornerRadius: 15)
                .fill(.gray.opacity(0.3))
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search fresh fruits")
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }.padding()
                ).frame(width: 350, height: 50, alignment: .center)

            Text("Top Selling")
                .font(.title)
                .fontWeight(.bold)
            TopSellingView()

            Text("Near you")
                .font(.title)
                .fontWeight(.bold)
            NearYouView()
            Spacer()
        }.padding()
            .navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
    }
}

#Preview {
    HomeScreenView()
}
