//
//  Degrees.swift
//  temprature-converter
//
//  Created by Omer Cagri Sayir on 15.12.2023.
//

import Foundation

struct Degrees {
    var celsius: Double
    var userInput: Double
    var userInputType: INPUTTYPE

    func calculateCelsius(degree: Double, type: INPUTTYPE) -> Double {
        var result = 0
        if type == INPUTTYPE.KELVIN {
            // Kelvin to celsius formula
            return degree - 273.15
        }
        // Fahrenheit to celsius formula
        return (5 * (degree - 32)) / 9
    }
}

enum INPUTTYPE {
    case KELVIN
    case FAHRENHEIT
}
