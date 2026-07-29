//
//  ButtonGroupComponent.swift
//  MyCars
//
//  Created by Carlos Alexandre Dias Messias de Lima on 29/07/26.
//

import SwiftUI

struct ButtonGroupComponent: View {
    var body: some View {
        HStack{
            Button(action: {
                //Alguma coisa
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
                // Ação do Plus
            }) {
                ZStack {
                    Circle()
                        .fill(Color("primaryColorSystem"))
                        .frame(width: 50, height: 50)
                    
                    Image(systemName: "plus")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(Color("backgroundColor"))
                }
            }
        }
    }
}

#Preview {
    ButtonGroupComponent()
}
