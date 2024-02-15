//
//  AddEventView.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 15/02/2024.
//

import SwiftUI
import MijickCalendarView

struct AddEventView: View {
    @State private var selectedDate: Date? = nil
    @State private var selectedRange: MDateRange? = .init()
    
    var body: some View {
        NavigationView{
            VStack {
                ZStack {
                    HeaderView(title: "eTracker",
                               subtitle: "Create Event",
                               bgColor: .black)
                    MCalendarView(selectedDate: $selectedDate, selectedRange: $selectedRange)
                        .padding(.top, 150)
                        .padding(.bottom, 20)

                }
                EButton(title: "Add Event") {
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    AddEventView()
}
