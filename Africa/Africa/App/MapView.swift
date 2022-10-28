//
//  MapView.swift
//  Africa
//
//  Created by Kyle Ferrigan on 10/26/22.
//

import SwiftUI
import MapKit

struct MapView: View {
	//MARK: Properties
	@State private var region: MKCoordinateRegion = {
		var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
		var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
		var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
		
		return mapRegion
	} ()
	
	let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
	
	//MARK: Body
    var body: some View {
		// 1. Basic Map
		//Map(coordinateRegion: $region)
		
		//2. Map with annotations
		Map(coordinateRegion: $region, annotationItems: locations,
			annotationContent: { item in
			// (A) Pin: Old style (always static)
			//MapPin(coordinate: item.location, tint: .accentColor)
			
			// (B) Marker: New Style (Always Static)
			//MapMarker(coordinate: item.location, tint: .accentColor)
			
			// (C) Custom basic annotation (it could be interactive)
			//MapAnnotation(coordinate: item.location){
			//	Image("logo")
			//		.resizable()
			//		.scaledToFit()
			//		.frame(width: 32, height: 32, alignment: .center)
			//}
			// (D) Custom Advanced Annotation (It could be interactive)
			
			
			MapAnnotation(coordinate: item.location){
				MapAnnotationView(location: item)
			}
		})//End Map
		.overlay(
			HStack{
				Image("compass")
					.resizable()
					.scaledToFit()
					.frame(width: 48, height: 48, alignment: .center)
				VStack(alignment: .leading, spacing: 3){
					HStack{
						Text("Latitude:")
							.font(.footnote)
							.fontWeight(.bold)
							.foregroundColor(.accentColor)
						Spacer()
						Text("\(region.center.latitude)")
							.font(.footnote)
							.foregroundColor(.white)
					}
					Divider()
					HStack{
						Text("Longitude:")
							.font(.footnote)
							.fontWeight(.bold)
							.foregroundColor(.accentColor)
						Spacer()
						Text("\(region.center.longitude)")
							.font(.footnote)
							.foregroundColor(.white)
					}
				}
			}
				.padding(.vertical, 12)
				.padding(.horizontal, 16)
				.background(
					Color.black
						.cornerRadius(8)
						.opacity(0.6)
			)
			.padding()
			, alignment: .top
		)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
