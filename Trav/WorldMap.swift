//
//  WorldMap.swift
//  Trav
//
//  Created by Shashank Indukuri on 12/25/21.
//

import MapKit
import SwiftUI

struct WorldMap: View {
    @EnvironmentObject var locations: Locations
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 35.6532, longitude: -83.5070),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    var body: some View {
        Map(coordinateRegion: $region,
            annotationItems: locations.locations) {
            location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                NavigationLink(destination: ContentView(location: location)) {
                    Image(location.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 80, height: 40)
                        .shadow(radius: 3)
                }
            }
        }
            .navigationTitle("Locations")
    }
}

struct WorldMap_Previews: PreviewProvider {
    static var previews: some View {
        WorldMap()
    }
}
