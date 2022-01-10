//
//  MenuItemSection.swift
//  SwiftUIUberEatsMenu
//
//  Created by SangWoo on 2022/01/10.
//

import SwiftUI

struct MenuItemSection: View {
    let option: MenuBarOptions
    @Binding var currentOption: MenuBarOptions
    
    var body: some View {
        VStack (alignment: .leading, spacing: 24){
            Text(option.title)
                .font(.title.bold())
                .padding(.vertical)
            
            ForEach(option.foodItems) { fooditem in
                HStack(spacing: 16) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(fooditem.title)
                            .font(.title3.bold())
                        
                        Text(fooditem.description)
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                        Text("Price: \(fooditem.price)")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                        
                    }
                    
                    Spacer()
                    
                    Image(fooditem.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 96, height: 88)
                        .clipped()
                        .cornerRadius(10)
                }
                
                Divider()
            }
        }
        .modifier(OffsetModifier(option: option, currentOption: $currentOption))
    }
}

struct MenuItemSection_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MenuItemSection(option: .japanese, currentOption: .constant(.japanese))
        }
    }
}
