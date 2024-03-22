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
    @State private var amount: Double = 1.0
    @State private var convertedAmount: Double = 1.0
    @State private var convertToBase: Bool = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            Text("Base: \(divisaName)")
            Text("Valor: \(divisaValue)")
            Text("Fecha: \(Date().description)")
            
            TextField("Introduce cantidad", value: $amount, formatter: NumberFormatter())
                .padding()
            
            Toggle("Convertir a \(convertToBase ? "EUR" : divisaName)", isOn: $convertToBase)
                .padding()
            
            Button("Convertir") {
                convertedAmount = convertAmount()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            Text("Cantidad de la conversion: \(convertedAmount, specifier: "%.2f")")
        }
        .padding()
        .navigationTitle("Detalle divisa")
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
