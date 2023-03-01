////
// LayoutAndGeometry
// Created by: itsjagnezi on 27/02/23
// Copyright (c) today and beyond
//

import SwiftUI

struct LearningGeometryReader: View {
	let colors: [Color] = [.red, .yellow, .green, .blue, .orange, .pink, .purple]
	
	var body: some View {
		ScrollView {
			ForEach(0..<50) {num in
				GeometryReader { geo in
					
					Text("Row #\(num)")
						.font(.title)
						.frame(maxWidth: .infinity)
						.background(
							Color(
								hue: geo.frame(in: .global).maxY * 0.001,
								saturation: geo.frame(in: .global).midY * 0.001,
								brightness: geo.frame(in: .global).minY * 0.001)
						)
						.cornerRadius(4)
						.rotation3DEffect(
							.degrees(geo.frame(in: .global).minY / 5),
							axis: (x: 0, y: 1, z: 0)
						)
						.opacity((geo.frame(in: .global).minY - 40 ) * 0.01)
						.scaleEffect(
							max(geo.frame(in: .global).maxY * 0.001, 0.5)
						)
					
					
				}
				.frame(height: 40)
			}
		}
		
		
		//		GeometryReader { fullView in
		//			ScrollView {
		//				ForEach(0..<50) {num in
		//					GeometryReader { geo in
		//						Text("Row #\(num)")
		//							.font(.title)
		//							.frame(maxWidth: .infinity)
		//							.background(colors[num % 7])
		//							.cornerRadius(4)
		//							.rotation3DEffect(
		//								.degrees(geo.frame(in: .global).minY - fullView.size.height / 2) / 5,
		//								axis: (x: 0, y: 1, z: 0))
		//					}
		//					.frame(height: 40)
		//				}
		//			}
		//		}
		
		//		ScrollView(.horizontal, showsIndicators: false) {
		//			HStack(spacing: 0) {
		//				ForEach(1..<20) { num in
		//					GeometryReader { geo in
		//						Text("Number \(num)")
		//							.font(.largeTitle)
		//							.padding()
		//							.background(.red)
		//							.rotation3DEffect(
		//								.degrees(-geo.frame(in: .global).minX) / 8,
		//								axis: (x:0, y:1, z:0)
		//							)
		//							.frame(width: 200, height: 200)
		//					}
		//					.frame(width: 200, height: 200)
		//				}
		//			}
		//		}
		
	}
}

struct LearningGeometryReader_Previews: PreviewProvider {
	static var previews: some View {
		LearningGeometryReader()
	}
}
