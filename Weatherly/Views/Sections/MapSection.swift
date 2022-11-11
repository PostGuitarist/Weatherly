//
//  MapSection.swift
//  Weatherly
//
//  Created by Zaden Connell on 11/11/22.
//

import SwiftUI

struct MapSection: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.blue)
                .frame(width: .infinity, height: 200)
        }
    }
}

struct MapSection_Previews: PreviewProvider {
    static var previews: some View {
        MapSection()
    }
}
