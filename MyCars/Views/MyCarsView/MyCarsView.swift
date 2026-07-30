//
//  MyCarsView.swift
//  MyCars
//
//  Created by Carlos Alexandre Dias Messias de Lima on 29/07/26.
//

import SwiftUI

struct MyCarsView: View {
    @State private var search: String = ""
    @State private var isShowing: Bool = false
    
    var body: some View {
        ZStack{
            Color("backgroundColor").ignoresSafeArea()
            ScrollView{
                ButtonGroupComponent(isShowing: $isShowing)
                
                HStack{
                    Text("MyCars")
                        .font(.title)
                        .bold()
                    
                    Spacer()
                }
                
                TextField(
                    "Search",
                    text: $search
                )
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.gray, lineWidth: 1)
                )
                
                CarItemComponent()
                
            }
            .padding(.horizontal,20)
        }
        .sheet(isPresented: $isShowing){
            AddCarView()
        }
    }
}

#Preview {
    MyCarsView()
}
