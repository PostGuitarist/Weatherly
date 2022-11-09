//
//  FutureSelection.swift
//  Weatherly
//
//  Created by Zaden Connell on 11/7/22.
//

import SwiftUI

enum FutureWeatherSelection : String, CaseIterable {
    case today = "Today"
    case tomorrow = "Tomorrow"
    case nextDays = "Next 7 Days"
}

struct FutureSelection: View {
    @State var futureSelection : FutureWeatherSelection = .today
    
    var body: some View {
        HStack {
            Picker("", selection: $futureSelection) {
                ForEach(FutureWeatherSelection.allCases, id: \.self) { option in
                    Text(option.rawValue)
                }
            }
            .pickerStyle(.segmented)
            .padding()
            .frame(width: 300)
            Spacer()
        }
        
    }
}

struct FutureSelection_Previews: PreviewProvider {
    static var previews: some View {
        FutureSelection()
    }
}
