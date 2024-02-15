//
//  AgeView.swift
//  SkillZilla_ios
//
//  Created by Marlon Henry on 2/14/24.
//

import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    let text: String
    var isSelected: Bool = false
}

struct AgeView: View {
    @State private var items = [
        Item(text: "Under 18"),
        Item(text: "18-24"),
        Item(text: "25-34"),
        Item(text: "35-44"),
        Item(text: "45-54"),
        Item(text: "55-64"),
        Item(text: "65+")
    ]
    
    var body: some View {
        VStack(spacing:20) {
                Spacer().frame(height:20)
            Text("What's your age?").font(.largeTitle)
                List(items) { item in
                    HStack {
                        Text(item.text)
                        Spacer()
                        Image(systemName: item.isSelected ? "largecircle.fill.circle" : "circle")
                            .foregroundColor(item.isSelected ? .blue : .gray)
                            .onTapGesture {
                                self.selectItem(item)
                            }
                    }
                }
                .frame(width: 343, height: 474)
            Button(action: {
                // Handle login action
            }) {
                Text("Continue")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(.blue))
            }
            .padding(.horizontal)
            }
            .padding()
        }
    
    func selectItem(_ selectedItem: Item) {
           for index in items.indices {
               if items[index].id == selectedItem.id {
                   items[index].isSelected.toggle()
               } else {
                   items[index].isSelected = false
               }
           }
    }
}

struct AgeView_Previews: PreviewProvider {
    static var previews: some View {
        AgeView()
    }
}
