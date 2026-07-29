//
//  MyCarsView.swift
//  MyCars
//
//  Created by Carlos Alexandre Dias Messias de Lima on 29/07/26.
//

import SwiftUI

struct MyCarsView: View {
    var body: some View {
        ZStack{
            Color("backgroundColor").ignoresSafeArea()
            ScrollView{
                ButtonGroupComponent()
            }
            .padding(.horizontal,20)
        }
    }
}

#Preview {
    MyCarsView()
}
