//
//  DetailsView.swift
//  MiniShoppingApp
//
//  Created by Benjamin Inemugha  on 05/08/2024.
//

import SwiftUI

struct RoundedCornerShape: Shape {
    let corners: UIRectCorner
    let radius: CGFloat

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct CounterView: View {
    @State var count = 0

    var body: some View {
        HStack(spacing: 25) {
            Button {
                if count != 10 {
                    count += 1
                }
            } label: {
                Image(systemName: "plus")
            }
            Text("\(count)")
                .font(.title)

            Button {
                if count != 0 {
                    count -= 1
                }
            } label: {
                Image(systemName: "minus")
            }
        }
        .foregroundStyle(.black)
        .frame(width: 130, height: 40)
        .background(Color("bgColor").opacity(0.15))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .padding()
    }
}

struct DetailsView: View {
    @State var fruit: fruitTitle
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            Image("bg")
                .resizable()
                .ignoresSafeArea(.all, edges: .top)
                .clipShape(RoundedCornerShape(corners: [.bottomLeft, .bottomRight], radius: 50))
                .frame(width: .infinity, height: .infinity, alignment: .top)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay(
                    Image("\(fruit.rawValue)")
                        .resizable()
                        .frame(width: 250, height: 250, alignment: .center)
                        .shadow(color: .gray, radius: 5, x: 5, y: 5)
                )
            Spacer()
            Text("\(fruit.rawValue) - Medium")
                .fontWeight(.medium)
                .font(.system(.title))
                .padding(.horizontal)
                .textCase(.uppercase)
            Text("Each (500g - 700g)")
                .padding(.horizontal)
            Text("Organic agriculture is intended to produce high quality, nutritious food that contributes to preventive health care and well-being. In view of this, it avoids the use of fertilizers, pesticides, animal drugs and food additives that may have adverse health effects.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(6)
                .padding(.horizontal)

            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("bgColor"))
                    .opacity(0.15)
                    .overlay(Image(systemName: "hourglass"))
                    .font(.system(size: 40))
                    .frame(width: 50, height: 50)
                VStack(alignment: .leading, spacing: 5) {
                    Text("Delivery Time")
                    Text("25 - 30 Min")
                }
            }.padding(.horizontal)

            HStack {
                Text("$1.99")
                    .font(.title3)
                    .fontWeight(.medium)
                    .padding(.horizontal)
                Spacer()
                CounterView()
                    .padding(.horizontal)
            }.padding(.horizontal)

            Image("bg")
                .resizable()
                .frame(width: 350, height: 50, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay (
                    Text("Add to cart")
                        .font(.title3)
                        .fontWeight(.medium)
                )
                .padding(.horizontal)
        }
    }
}

#Preview {
    DetailsView(fruit: .orange)
}
