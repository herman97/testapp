//
//  CircleImage.swift
//  ak
//
//  Created by Herman Nordin on 2021-12-21.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("pa")
            .clipShape(Circle())
            .overlay {
                Circle()
                .stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
