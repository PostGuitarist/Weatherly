//
//  TodayConditions.swift
//  Weatherly
//
//  Created by Zaden Connell on 11/9/22.
//

import SwiftUI

struct TodayConditions: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(red: 32 / 255, green: 36 / 255, blue: 41 / 255))
                .frame(width: 115, height: 145)
            VStack {
                Text("10 am")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                Image(systemName: "sun.max.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(7)
                    .foregroundColor(.yellow)
                Text("16^")
                    .font(.system(size: 22))
                    .bold()
                    .foregroundColor(.white)
            }
        }
    }
}

struct TodayConditions_Previews: PreviewProvider {
    static var previews: some View {
        TodayConditions()
    }
}
