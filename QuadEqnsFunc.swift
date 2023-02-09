//
//  QuadEqnsFunc.swift
//  QuadraticEqns
//
//  Created by IIT PHYS 440 on 1/30/23.
//

import SwiftUI

class QuadEqnsFunc: NSObject {
    func form1(a: Double, b: Double, c: Double) -> (Double, Double) {
        let x1 = (-b + sqrt(b * b - 4 * a * c)) / (2 * a)
        let x2 = (-b - sqrt(b * b - 4 * a * c)) / (2 * a)
        return (x1, x2)
    }

    func form2(a: Double, b: Double, c: Double) -> (Double, Double) {
        let x1 = (-2 * c) / (b + sqrt(b * b - 4 * a * c))
        let x2 = (-2 * c) / (b - sqrt(b * b - 4 * a * c))
        return (x1, x2)
    }

}
