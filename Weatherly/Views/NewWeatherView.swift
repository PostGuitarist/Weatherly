//
//  NewWeatherView.swift
//  Weatherly
//
//  Created by Zaden Connell on 11/4/22.
//

import SwiftUI

struct NewWeatherView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            VStack(spacing: 40) {
                HStack(alignment: .center, spacing: 235) {
                    VStack(alignment: .leading) {
                        Text("Location")
                            .font(.headline)
                        Text("Date")
                            .font(.caption)
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .fill(.gray)
                            .frame(width: 50, height: 50)
                        Image(systemName: "square.on.square")
                    }
                }
                HStack(spacing: 150) {
                    VStack {
                        Text("18^0")
                            .font(.largeTitle)
                        Text("Thunderstorm")
                    }
                    Image(systemName: "tropicalstorm.circle")
                        .resizable()
                        .frame(width: 100, height: 100)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(.gray)
                        .frame(width: 350, height: 100)
                    HStack(spacing: 65) {
                        VStack(spacing: 5) {
                            Image(systemName: "wind")
                                .frame(width: 25, height: 25)
                            Text("10 m/s")
                            Text("Wind")
                                .font(.caption)
                        }
                        VStack(spacing: 5) {
                            Image(systemName: "humidity.fill")
                                .frame(width: 25, height: 25)
                            Text("98%")
                            Text("Humidity")
                                .font(.caption)
                        }
                        VStack(spacing: 5) {
                            Image(systemName: "cloud.rain.fill")
                                .frame(width: 25, height: 25)
                            Text("100%")
                            Text("Rain")
                                .font(.caption)
                        }
                    }
                }
                Spacer()
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct NewWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        NewWeatherView()
    }
}
