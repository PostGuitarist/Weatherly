//
//  ConditionsSection.swift
//  Weatherly
//
//  Created by Zaden Connell on 11/6/22.
//

import SwiftUI

struct ConditionsSection: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(red: 32 / 255, green: 36 / 255, blue: 41 / 255))
                .frame(width: 360, height: 100)
            HStack(spacing: 40) {
                VStack(spacing: 5) {
                    Image(systemName: "wind")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                    Text("10 m/s")
                        .font(.headline)
                        .foregroundColor(.white)
                    Text("Wind")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                .padding()
                VStack(spacing: 5) {
                    Image(systemName: "humidity.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                    Text("98%")
                        .font(.headline)
                        .foregroundColor(.white)
                    Text("Humidity")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                .padding()
                VStack(spacing: 5) {
                    Image(systemName: "cloud.rain.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                    Text("100%")
                        .font(.headline)
                        .foregroundColor(.white)
                    Text("Rain")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                .padding()
            }
        }
    }
}

struct ConditionsSection_Previews: PreviewProvider {
    static var previews: some View {
        ConditionsSection()
    }
}
