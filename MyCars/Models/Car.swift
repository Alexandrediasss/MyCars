//
//  Car.swift
//  MyCars
//
//  Created by Carlos Alexandre Dias Messias de Lima on 30/07/26.
//

import Foundation
import SwiftData

@Model
class Car {
    @Attribute(.unique) var id: UUID
    var name: String
    var dtCreated: Date
    var color: String
    
    init (id: UUID = UUID(), name: String, dtCreated: Date, color: String){
        self.id = id
        self.name = name
        self.dtCreated = dtCreated
        self.color = color
    }
}
