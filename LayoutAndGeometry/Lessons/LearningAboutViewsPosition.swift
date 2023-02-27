////
// LayoutAndGeometry
// Created by: itsjagnezi on 26/02/23
// Copyright (c) today and beyond
//

import SwiftUI

struct LearningAboutViewsPosition: View {
	
	// 1. A parent view proposes a size for its child.
	
	// 2. Based on that information, the child then chooses its own size and the parent must respect that choice.
	
	// 3. The parent then positions the child in its coordinate space.
	
	
	var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
				.padding(20)
				.background(.red)
    }
}

struct LearningAboutViewsPosition_Previews: PreviewProvider {
    static var previews: some View {
        LearningAboutViewsPosition()
    }
}
