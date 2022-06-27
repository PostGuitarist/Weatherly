//
//  LocationManager.swift
//  Weatherly
//
//  Created by Zaden Connell on 6/27/22.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    // Creating an instance of CLLocationManager, the framework used to get coordinates
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    
    override init() {
        super.init()
        
        // Assigning a dekegate to CLLocationManager instance
        manager.delegate = self
    }
    
    // Requests the one-time delivery of the user's current location
    func requestLocation() {
        isLoading = true
        manager.requestLocation()
    }
    
    // Set the location coordinates to the location variable
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isLoading = false
    }
    
    // Called is error returned
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("error getting location", error)
        isLoading = false
    }
}
