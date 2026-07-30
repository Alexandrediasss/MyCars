//
//  CarItemComponent.swift
//  MyCars
//
//  Created by Carlos Alexandre Dias Messias de Lima on 30/07/26.
//

import SwiftUI
import SwiftData

struct CarItemComponent: View {
    @Environment(\.modelContext) private var context
    @Query private var cars: [Car]
    
    var body: some View {
        if cars.isEmpty {
            Text("No cars found")
                .padding()
                .listRowSeparator(.hidden)
                .listRowBackground(Color.clear)
        } else {
            ForEach(cars) { car in
                HStack {
                    Image("ferrariPlaceholder")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(10)
                    Text(car.name)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .padding(.top, 10)
                
                .listRowSeparator(.hidden)
                .listRowBackground(Color.clear)
                .listRowInsets(EdgeInsets())
            }
            .onDelete(perform: deleteCar)
        }
    }
    
    private func deleteCar(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                let carToDelete = cars[index]
                context.delete(carToDelete)
            }
        }
    }
}

#Preview {
    CarItemComponent()
}
