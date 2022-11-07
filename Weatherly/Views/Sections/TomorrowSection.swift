//
//  TomorrowSection.swift
//  Weatherly
//
//  Created by Zaden Connell on 11/7/22.
//

import SwiftUI

struct TomorrowSection: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: -20) {
                ForEach(0..<24) {_ in
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(red: 32 / 255, green: 36 / 255, blue: 41 / 255))
                            .frame(width: 100, height: 125)
                        VStack(spacing: 15) {
                            Text("10 am")
                                .font(.caption)
                            Image(systemName: "sun.max")
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text("16*")
                                .font(.subheadline)
                        }
                        .padding()
                    }
                    .padding()
                }
            }
            .padding()
        }
    }
}

struct TomorrowSection_Previews: PreviewProvider {
    static var previews: some View {
        TomorrowSection()
    }
}
