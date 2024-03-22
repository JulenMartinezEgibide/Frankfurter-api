//
//  DivisaListView.swift
//  FrankfurterAPI
//
//  Created by  on 22/3/24.
//

import SwiftUI

struct DivisaDetail: View {
    let divisa: Divisa

    var body: some View {
        VStack(alignment: .leading) {
            Text("Amount: \(divisa.amount)")
            Text("Base: \(divisa.base)")
            Text("Date: \(divisa.date)")
            Text("Rates:")
            
            ForEach(divisa.rates.sorted(by: <), id: \.key) { key, value in
                NavigationLink(destination: Text("\(key): \(value)")) {
                    Text("\(key): \(value)")
                }
            }
        }
        .padding()
        .navigationTitle("Divisa Detail")
    }
}

#Preview {
    DivisaDetail(divisa: Mockdata.divisa)
}

