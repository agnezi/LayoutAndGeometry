////
// LayoutAndGeometry
// Created by: itsjagnezi on 26/02/23
// Copyright (c) today and beyond
//

import SwiftUI


extension VerticalAlignment {
	enum MidAccountName: AlignmentID {
		static func defaultValue(in context: ViewDimensions) -> CGFloat {
			context[.top]
		}
	}
	static let midAccountName = VerticalAlignment(MidAccountName.self)
}

struct CreatingCustomAligment: View {
    var body: some View {
			HStack(alignment: .midAccountName) {
				VStack {
					Text("@itsjagnezi")
						.alignmentGuide(.midAccountName) { d in
							d[VerticalAlignment.center]
						}
					Image("some_image")
						.resizable()
						.frame(width: 64, height: 64)
				}
				
				VStack {
					Text("Full Name")
					Text("Jhow Jones")
						.alignmentGuide(.midAccountName) { d in
							d[VerticalAlignment.center]
						}
						.font(.largeTitle)
				}
			}
    }
}

struct CreatingCustomAligment_Previews: PreviewProvider {
    static var previews: some View {
        CreatingCustomAligment()
    }
}
