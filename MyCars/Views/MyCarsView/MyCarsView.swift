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
        ZStack {
            Color("backgroundColor").ignoresSafeArea()
            
            List {
                VStack(spacing: 16) {
                    ButtonGroupComponent(isShowing: $isShowing)
                    
                    HStack {
                        Text("MyCars")
                            .font(.title)
                            .bold()
                        Spacer()
                    }
                    
                    TextField("Search", text: $search)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
                .listRowSeparator(.hidden)
                .listRowBackground(Color.clear)
                .listRowInsets(EdgeInsets())
                .padding(.bottom, 10)
                
                CarItemComponent()
                
            }
            .listStyle(.plain) 
            .padding(.horizontal, 20)
        }
        .sheet(isPresented: $isShowing) {
            AddCarView(isShowing: $isShowing)
        }
    }
}

#Preview {
    MyCarsView()
}
