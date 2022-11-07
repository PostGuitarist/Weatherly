//
//  FutureSelection.swift
//  Weatherly
//
//  Created by Zaden Connell on 11/7/22.
//

import SwiftUI

struct FutureSelection: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Today")
                    .font(.caption)
                Text("Tomorrow")
                    .font(.caption)
                Text("Next 10 days")
                    .font(.caption)
            }
            Image(systemName: "circle.fill")
                .resizable()
                .frame(width: 5, height: 5, alignment: .center)
        }
        .padding()
    }
}

struct FutureSelection_Previews: PreviewProvider {
    static var previews: some View {
        FutureSelection()
    }
}
