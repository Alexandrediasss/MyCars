//
//  ButtonGroupComponent.swift
//  MyCars
//
//  Created by Carlos Alexandre Dias Messias de Lima on 29/07/26.
//

import SwiftUI

struct ButtonGroupComponent: View {
    @Binding var isShowing: Bool
    var body: some View {
        HStack{
            Button(action: {
                // Ação do botão
            }){
                ZStack {
                    Circle()
                        .fill(.ultraThinMaterial)
                        .frame(width: 50, height: 50)
                    
                    Image(systemName: "ellipsis")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                }
                .glassEffect()
            }
            
            Spacer()
            
            Button(action: {
                isShowing.toggle()
            }) {
                ZStack {
                    Circle()
                        .fill(Color("primaryColorSystem"))
                        .frame(width: 50, height: 50)
                    
                    Image(systemName: "plus")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(Color("backgroundColor"))
                }
                .glassEffect()
            }
        }
    }
}

#Preview {
    ButtonGroupComponent(isShowing: .constant(true))
}
