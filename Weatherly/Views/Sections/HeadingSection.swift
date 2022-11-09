//
//  HeadingSection.swift
//  Weatherly
//
//  Created by Zaden Connell on 11/6/22.
//

import SwiftUI

struct HeadingSection: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Stuttgart")
                    .font(.headline)
                    .bold()
                    .frame(alignment: .topLeading)
                    .foregroundColor(.white)
                Text("12 September, Sunday")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding()
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color(red: 32 / 255, green: 36 / 255, blue: 41 / 255))
                    .frame(width: 35, height: 35)
                Image(systemName: "square.grid.2x2.fill")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)
            }
            .padding()
        }
        .frame(alignment: .top)
    }
}

struct HeadingSection_Previews: PreviewProvider {
    static var previews: some View {
        HeadingSection()
    }
}
