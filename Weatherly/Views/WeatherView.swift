//
//  WeatherView.swift
//  Weatherly
//
//  Created by Zaden Connell on 6/27/22.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ZStack {
            VStack {
                HeadingSection()
                HStack {
                    VStack(alignment: .leading) {
                        Text("18°")
                            .font(.system(size: 70))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Text("Thunderstorm")
                            .font(.system(size: 15))
                            .bold()
                            .foregroundColor(.gray)
                    }
                    .padding()
                    Spacer()
                    Image(systemName: "cloud.bolt.rain.fill")
                        .resizable()
                        .frame(width: 75, height: 75)
                        .padding()
                        .foregroundColor(.white)
                }
                ConditionsSection()
                FutureSelection()
                TodayConditions()
                MapSection()
                    .padding()
                Spacer()
                
            }
        }
        .background(Color(red: 26 / 255, green: 28 / 255, blue: 30 / 255))
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
