////
// LayoutAndGeometry
// Created by: itsjagnezi on 26/02/23
// Copyright (c) today and beyond
//

import SwiftUI

struct LearningAligments: View {
	var body: some View {
		VStack {
			
			VStack(alignment: .leading) {
				Text("Hello world!")
					.alignmentGuide(.leading) { dimension in
						dimension[.trailing]
					}
				Text("This is a longer line text")
			}
			.padding(8)
			.background(.orange)
			.cornerRadius(8)
			
			HStack(alignment: .lastTextBaseline) {
				Text("Liave")
					.font(.caption)
				Text("long")
				Text("and")
					.font(.title)
				Text("prosper")
					.font(.largeTitle)
			}
			.padding(8)
			.background(.green)
			.cornerRadius(8)
			
			
			VStack(alignment: .leading) {
				Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
				Text("Another text bigger then first one.")
			}
			.padding(8)
			.background(.red)
			.cornerRadius(8)
			
			VStack(alignment: .leading) {
				ForEach(0..<10) { position in
					Text("Text \(position)")
						.alignmentGuide(.leading) { _ in
							CGFloat(position) * -10
						}
				}
			}
			.padding(8)
			.background(.purple)
			.cornerRadius(8)
			
		}
		.frame(width: 380, height: 380, alignment: .top)
		.background(.blue)
		.cornerRadius(8)
	}
}

struct LearningAligments_Previews: PreviewProvider {
	static var previews: some View {
		LearningAligments()
	}
}
