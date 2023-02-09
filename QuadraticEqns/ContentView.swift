//
//  ContentView.swift
//  QuadraticEqns
//
//  Created by IIT PHYS 440 on 1/25/23.
//

import SwiftUI

struct ContentView: View {
    @State private var a = ""
    @State private var b = ""
    @State private var c = ""
    @State private var x1 = ""
    @State private var x2 = ""
    
    var form1: (Double, Double, Double) -> (Double, Double) {
        return { a, b, c in
            let root = sqrt(b * b - 4 * a * c)
            let x1 = (-b + root) / (2 * a)
            let x2 = (-b - root) / (2 * a)
            return (x1, x2)
        }
    }
    
    var form2: (Double, Double, Double) -> (Double, Double) {
        return { a, b, c in
            let x1 = (-2 * c) / (b + sqrt(b * b - 4 * a * c))
            let x2 = (-2 * c) / (b - sqrt(b * b - 4 * a * c))
            return (x1, x2)
        }
    }
    
    func calculateSolutions() {
        let aDouble = Double(a) ?? 0
        let bDouble = Double(b) ?? 0
        let cDouble = Double(c) ?? 0
        
        let (x1Form1, x2Form1) = form1(aDouble, bDouble, cDouble)
        let (x1Form2, x2Form2) = form2(aDouble, bDouble, cDouble)
        
        x1 = "\(x1Form1), \(x1Form2)"
        x2 = "\(x2Form1), \(x2Form2)"
    }
    
    var body: some View {
        Form {
            Section(header: Text("Enter coefficients")) {
                TextField("a", text: $a)
                TextField("b", text: $b)
                TextField("c", text: $c)
            }
            
            Section(header: Text("Solutions")) {
                Text("x1 = \(x1)")
                Text("x2 = \(x2)")
            }
        }
        .navigationTitle("Quadratic Equation")
        .navigationItems(trailing: Button(action: calculateSolutions) {
            Text("Calculate")
        })
    }
}

