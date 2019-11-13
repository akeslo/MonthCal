//
//  CalendarView.swift
//  CalSwiftUI
//
//  Created by Adam Kes on 11/13/19.
//  Copyright © 2019 KesDev. All rights reserved.
//

import SwiftUI

@available(OSX 10.15, *)
struct CalendarView: View {
    
    let startDate: Date
    let monthsToDisplay: Int
    var selectableDays = true
    
    var body: some View {
        VStack {
            WeekdaysView()
            ScrollView {
                MonthView(month: Month(startDate: startDate, selectableDays: selectableDays))
                if monthsToDisplay > 1 {
                    ForEach(1..<self.monthsToDisplay) {
                        MonthView(month: Month(startDate: self.nextMonth(currentMonth: self.startDate, add: $0), selectableDays: self.selectableDays))
                    }
                }
            }
        }
    }
    
    func nextMonth(currentMonth: Date, add: Int) -> Date {
        var components = DateComponents()
        components.month = add
        let next = Calendar.current.date(byAdding: components, to: currentMonth)!
        return next
    }
    

}

@available(OSX 10.15, *)
struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView(startDate: Date(), monthsToDisplay: 2)
    }
}
