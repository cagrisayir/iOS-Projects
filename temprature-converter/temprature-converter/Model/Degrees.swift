//
//  Degrees.swift
//  temprature-converter
//
//  Created by Omer Cagri Sayir on 15.12.2023.
//

import Foundation
import SwiftData

@Observable class Degrees {
    var celsius: Double
    var userInput: String
    var userInputType: INPUTTYPE

    init() {
        celsius = 0
        userInput = "0"
        userInputType = .KELVIN
    }

    func calculateCelsius() {
        if userInputType == INPUTTYPE.KELVIN {
            // Kelvin to celsius formula
            celsius = Double(userInput)! - 273.15
        } else {
            // Fahrenheit to celsius formula
            celsius = (5 * (Double(userInput)! - 32)) / 9
        }
    }
}

enum INPUTTYPE: CaseIterable {
    case KELVIN
    case FAHRENHEIT
}
