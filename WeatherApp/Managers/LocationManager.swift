//
//  LocationManager.swift
//  WeatherApp
//
//  Created by Mark Mendoza on 2024-07-25.
//

import Foundation
import CoreLocation // Framework from Apple to get a user's location.

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
	let manager = CLLocationManager()
	
	@Published var location: CLLocationCoordinate2D?
	@Published var isLoading = false
	
	override init() {
		super.init()
		manager.delegate = self
	}
	
	func requestLocation() {
		isLoading = true
		manager.requestLocation()
	}
	
	func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
		location = locations.first?.coordinate
		isLoading = false
	}
	
	func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
		print("There was an error getting your location. Please try again.", error)
		isLoading = false
	}
}
