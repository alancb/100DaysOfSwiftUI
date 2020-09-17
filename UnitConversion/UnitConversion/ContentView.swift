//
//  ContentView.swift
//  UnitConversion
//
//  Created by Alan Barth on 9/17/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstValue: String = ""
    @State private var secondValue: String = ""
    @State private var firstValueIndex = 0
    @State private var returnValueIndex = 0
    
    var measurements: [UnitLength] = [UnitLength.feet, UnitLength.inches, .centimeters]
    let stringMeasurements = ["Feet", "Inches", "Centimeters"]
    
    
    
    var returnValue: Double {
        
        let originalUnit = measurements[firstValueIndex]
        let returnUnit = measurements[returnValueIndex]
        let firstValue = Double(self.firstValue) ?? 0
        
        let startingMeasurement = Measurement(value: firstValue, unit: originalUnit)
        
        let returnUnitValue = startingMeasurement.converted(to: returnUnit)
        
        return returnUnitValue.value
    }
    
    var body: some View {
        Form {
            Section(header: Text("Enter Starting measurements")) {
                
                Picker("First Measurement", selection: $firstValueIndex) {
                    ForEach(0 ..< measurements.count) {
                        Text("\(self.stringMeasurements[$0])")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                TextField("Enter first value", text: $firstValue)
                    .keyboardType(.decimalPad)
            }
            Section(header: Text("Ending Measurement Type")) {
                Picker("Ending Measurement", selection: $returnValueIndex) {
                    ForEach(0 ..< measurements.count) {
                        Text("\(self.stringMeasurements[$0])")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                
                Text("\(returnValue, specifier: "%.2f")")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
