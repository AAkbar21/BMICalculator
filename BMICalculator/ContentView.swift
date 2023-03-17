//
//  ContentView.swift
//  BMICalculator
//
//  Created by David Cormell on 23/02/2022.
//

import SwiftUI

struct ContentView: View {
    let calculator = BMICalculations()
    @State var height = " "
    @State var weight = " "
    @State var BMI = 0
    @State var BMI_Classification = " "
    
    
    
    var body: some View {
        VStack {
            
            Image("PublicHealth")
                .padding()
            
            Form{
            
            Section(header: Text("Details")) {
                HStack {
                    TextField("Enter Height",text: $height)
                    Text("cm")
                }
                HStack {
                    TextField("Enter Weight",text: $weight)
                    Text("Kg")
                }
            }
                .padding()
            
            
            Section(header: Text("Results")) {
                Text("Your BMI is: \(BMI)")
                Text("You are \(BMI_Classification)")
            }
            }
                
            Button("Calculate BMI", action: {
                BMI = Int(calculator.calculateBMI(weight: self.weight, height: self.height))
                BMI_Classification = calculator.lookUpBmiClassification(bmi: Double(BMI))
            })
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
