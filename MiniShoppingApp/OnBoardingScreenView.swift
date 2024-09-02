//
//  OnBoardingScreenView.swift
//  MiniShoppingApp
//
//  Created by Benjamin Inemugha  on 05/08/2024.
//

import SwiftUI

struct OnBoardingScreenView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                VStack(alignment: .leading, spacing: 10) {
                    Text("Order your Favourite Fruits").fontWeight(.bold).font(.system(.largeTitle))
                    Text("Eat fresh fruits and try to be healthy").font(.system(.title3)).foregroundStyle(.black.opacity(0.7))
                }
                Spacer()
                NavigationLink(destination: HomeScreenView()) {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width: 280, height: 60, alignment: .trailing)
                        .overlay(
                            HStack(spacing: 10) {
                                Text("Next").font(.title).fontWeight(.bold)
                                Image(systemName: "chevron.right")
                            }.foregroundStyle(.black)
                        )
                }
                Spacer()
            }

            .navigationTitle("")
            .navigationBarHidden(false)
        }
    }
}

#Preview {
    OnBoardingScreenView()
}
