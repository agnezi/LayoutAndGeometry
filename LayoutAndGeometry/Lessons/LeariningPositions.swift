////
// LayoutAndGeometry
// Created by: itsjagnezi on 27/02/23
// Copyright (c) today and beyond
//

import SwiftUI

struct LeariningPositions: View {
    var body: some View {
			ZStack {
				
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
				.background(.blue)
				.position(x:100, y: 100)
				.background(.red)
			
			Text("teste")
					.background(.yellow)
					.offset(x:100, y: 100)
					.background(.green)
			}
    }
}

struct LeariningPositions_Previews: PreviewProvider {
    static var previews: some View {
        LeariningPositions()
    }
}
