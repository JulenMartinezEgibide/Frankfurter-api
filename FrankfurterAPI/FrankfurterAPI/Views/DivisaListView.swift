//
//  DivisaListView.swift
//  FrankfurterAPI
//
//  Created by  on 20/3/24.
//

import SwiftUI

struct DivisaListView: View {
    var divisa: Divisa
    
    var body: some View {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< 680753cefb3cfe95b77d93ec2991836f5e525a37
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
=======
=======
>>>>>>> 424f2a85a0fc296f37c381b0c4467a89810e69dc
        NavigationView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Amount: \(divisa.amount, specifier: "%.2f")")
                Text("Base: \(divisa.base)")
                Text("Date: \(divisa.date)")
                Text("Rates:")
                
                List {
                    ForEach(divisa.rates.sorted(by: { $0.key < $1.key }), id: \.key) { key, value in
                        NavigationLink(destination: DivisaDetailView(divisaName: key,divisaValue: value)) {
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
            .navigationTitle("Divisa List")
        }
<<<<<<< HEAD
>>>>>>> 1.1
=======
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
>>>>>>> parent of 22abaf2 (.)
=======
>>>>>>> 424f2a85a0fc296f37c381b0c4467a89810e69dc
    }
}

#Preview {
    DivisaListView(divisa: Mockdata.divisa)
}
