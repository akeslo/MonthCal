//
//  CellView.swift
//  CalSwiftUI
//
//  Created by Adam Kes on 11/13/19.
//  Copyright © 2019 KesDev. All rights reserved.
//

import SwiftUI

@available(OSX 10.15, *)
@available(iOS 13.0, *)
struct DayCellView: View {

    @ObservedObject var day: Day

    var body: some View {
        Text(day.dayName).frame(width: 32, height: 32)
            .foregroundColor(day.textColor)
            .background(day.backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .clipped()
            .onTapGesture {
                if self.day.disabled == false && self.day.selectableDays {
                    self.day.isSelected.toggle()
                }
        }
    }
}

@available(OSX 10.15, *)
@available(iOS 13.0, *)
struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        DayCellView(day: Day(date: Date()))
    }
}
