//
//  ContentView.swift
//  iExpense
//
//  Created by Arvin Shen on 5/30/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var expenses = Expenses()
    @State private var showingAddExpense = false
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Personal")) {
                    ForEach(expenses.personalItems) { item in
                        HStack {
                            VStack(alignment: .leading) {
                                Text(item.name)
                                    .font(.headline)
                                Text(item.type)
                            }
                            
                            Spacer()
                            
                            Text(item.amount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                                .foregroundColor(self.changeColor(for: item.amount))
                        }
                    }
                    .onDelete(perform: removePersonalItems)
                }
                
                Section(header: Text("Business")) {
                    ForEach(expenses.businessItems) { item in
                        HStack {
                            VStack(alignment: .leading) {
                                Text(item.name)
                                    .font(.headline)
                                Text(item.type)
                            }
                            
                            Spacer()
                            
                            Text(item.amount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                                .foregroundColor(self.changeColor(for: item.amount))
                        }
                    }
                    .onDelete(perform: removeBusinessItems)
                }
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    showingAddExpense = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddExpense) {
                AddView(expenses: expenses)
            }
        }
    }
    
    func removePersonalItems(at offsets: IndexSet) {
        // look at each item we're trying to delete
        for offset in offsets {
            // look in the personalItems array and get specific item we're trying to delete. Find corresponding match in expenses.items array.
            if let index = expenses.items.firstIndex(where: { $0.id == expenses.personalItems[offset].id }) {
                // delete item from expenses.items array at matched index
                expenses.items.remove(at: index)
            } else if let index = expenses.items.firstIndex(where: { $0.id == expenses.businessItems[offset].id }) {
                expenses.items.remove(at: index)
            }
        }
    }
    
    func removeBusinessItems(at offsets: IndexSet) {
        // look at each item we're trying to delete
        for offset in offsets {
            // look in the businessItems array and get specific item we're trying to delete. Find corresponding match in expenses.items array.
            if let index = expenses.items.firstIndex(where: { $0.id == expenses.businessItems[offset].id }) {
                expenses.items.remove(at: index)
            }
        }
    }
    
    func changeColor(for amount: Double) -> Color {
        switch amount {
        case -Double.infinity..<10.0:
            return .green
        case 10.0..<100.0:
            return .orange
        case 100.0..<Double.infinity:
            return .red
        default:
            return .black
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
