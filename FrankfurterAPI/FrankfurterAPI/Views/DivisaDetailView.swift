//
//  DivisaDetailView.swift
//  FrankfurterAPI
//
//  Created by  on 22/3/24.
//

import SwiftUI

struct DivisaDetailView: View {
    var divisaName: String
    var divisaValue: Double
    @State private var amountString: String = "1.0"
    @State private var convertedAmount: Double = 1.0
    @State private var convertToBase: Bool = true
    
    var amount: Double {
        return Double(amountString) ?? 1.0
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Amount: \(amount, specifier: "%.2f")")
            Text("Base: \(divisaName)")
            Text("Value: \(divisaValue)")
            Text("Date: \(Date().description)")
            
            TextField("Enter Amount", text: $amountString)
                .padding()
            
            Toggle("Convert to \(convertToBase ? "EUR" : divisaName)", isOn: $convertToBase)
                .padding()
            
            Button("Convert") {
                convertedAmount = convertAmount()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            Text("Converted Amount: \(convertedAmount, specifier: "%.2f")")
        }
        .padding()
        .navigationTitle("Divisa Detail")
    }
    
    func convertAmount() -> Double {
        let baseRate = convertToBase ? 1.0 : 1.0 / divisaValue
        let targetRate = convertToBase ? divisaValue : 1.0
        return amount * baseRate * targetRate
    }
}

#Preview {
    DivisaDetailView(divisaName: "USD", divisaValue: 1.0925)
}
