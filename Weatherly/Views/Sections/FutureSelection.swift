//
//  FutureSelection.swift
//  Weatherly
//
//  Created by Zaden Connell on 11/7/22.
//

import SwiftUI

struct FutureSelection: View {
    var body: some View {
        TabView {
            HourlySection()
                .frame(width: 425, height: 50)
                .tabItem{
                    Image(systemName: "1.circle")
                    Text("Tab 1")
                }
            TomorrowSection()
                .tabItem{
                    Image(systemName: "2.circle")
                    Text("Tab 2")
                }
            Color.mint
                .tabItem{
                    Image(systemName: "3.circle")
                    Text("Tab 3")
                }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

struct FutureSelection_Previews: PreviewProvider {
    static var previews: some View {
        FutureSelection()
    }
}
