//
//  OffsetKey.swift
//  SwiftUIUberEatsMenu
//
//  Created by SangWoo on 2022/01/10.
//

import SwiftUI

struct OffsetKey: PreferenceKey {
    static var defaultValue: CGRect = .zero
    
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
        
    }
}
