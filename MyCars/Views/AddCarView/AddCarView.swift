//
//  AddCarView.swift
//  MyCars
//
//  Created by Carlos Alexandre Dias Messias de Lima on 30/07/26.
//

import SwiftUI
import SwiftData

struct AddCarView: View {
    @Environment(\.modelContext) private var context
    
    @Binding var isShowing: Bool
    
    @State private var name: String = ""
    @State private var dtCreated: Date = Date()
    @State private var color: String = ""
    
    func saveCar() {
        print("Salvando dados")
        
        let newCar = Car(name: name, dtCreated: dtCreated, color: color)
        context.insert(newCar)
        
        print("Salvou")
        
        isShowing.toggle()
    }
    
    var body: some View {
        ZStack {
            Color("backgroundColor").ignoresSafeArea()
            
            VStack {
                Form {
                    Section(header: Text("Add a new car")) {
                        TextField("Name", text: $name)
                        DatePicker("Date", selection: $dtCreated, displayedComponents: .date)
                        TextField("Color", text: $color)
                    }
                }
                
                Button(action: {
                    saveCar()
                }){
                    Text("Save")
                        .frame(maxWidth: .infinity)
                        .frame(height: 40)
                        .bold()
                }
                .buttonStyle(.borderedProminent)
                .tint(Color("primaryColorSystem"))
                .padding(20)
            }
        }
    }
}

#Preview {
    AddCarView(isShowing: .constant(true))
}
