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
            NavigationView {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Cantidad: \(divisa.amount, specifier: "%.2f")")
                    Text("Base: \(divisa.base)")
                    Text("Fecha: \(divisa.date)")
                    Text("Divisas:")
                    
                    List {
                        ForEach(divisa.rates.sorted(by: { $0.key < $1.key }), id: \.key) { key, value in
                            NavigationLink(destination: DivisaDetailView(divisaName: key, divisaValue: value)) {
                                HStack {
                                    Text("\(key):")
                                    Spacer()
                                    Text("\(value, specifier: "%.4f")")
                                }
                            }
                        }
                        .listStyle(PlainListStyle()) // Optional: to remove default list style
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .padding()
                .navigationTitle("Lista divisas")
            }
        }
}

#Preview {
    DivisaDetail(divisa: Mockdata.divisa)
}

