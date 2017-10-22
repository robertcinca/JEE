//
//  LandMark.swift
//  JEE
//
//  Created by UCL on 4/23/15.
//  Copyright (c) 2015 UCL. All rights reserved.
//

import Foundation
import MapKit
import CoreLocation

class LandMark {
    var latitude: Double
    var longitude: Double
    var title: String
    var subtitle: String
    var coord: CLLocationCoordinate2D
    init(latitude: Double, longitude: Double, title: String, subtitle: String) {
        self.title = title
        self.subtitle = subtitle
        self.latitude = latitude
        self.longitude = longitude
        coord = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    init() {
        self.title = ""
        self.subtitle = ""
        self.latitude = 0.0
        self.longitude = 0.0
        self.coord = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}