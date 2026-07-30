//
//  CarItemComponent.swift
//  MyCars
//
//  Created by Carlos Alexandre Dias Messias de Lima on 30/07/26.
//

import SwiftUI

struct CarItemComponent: View {
    var body: some View {
        HStack{
            Image("ferrariPlaceholder")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            Text("Car Name")
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1)
        )
        .padding(.top, 10)
    }
}

#Preview {
    CarItemComponent()
}
