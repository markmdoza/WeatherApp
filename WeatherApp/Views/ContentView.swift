//
//  ContentView.swift
//  WeatherApp
//
//  Created by Mark Mendoza on 2024-07-25.
//

import SwiftUI

struct ContentView: View {
	@StateObject var locationManager = LocationManager()
	@State var weather: ResponseBody?
	var weatherManager = WeatherManager()
    var body: some View {
        VStack {
			if let location = locationManager.location {
				if let weather = weather {
					WeatherView(weather: weather)
				} else {
					ProgressView()
						.task {
							do {
								weather = try await weatherManager.getCurrentWeather(latitude: location.longitude, longitude: location.longitude)
							} catch {
								print("There was an error getting the weather: \(error)")
							}
						}
				}
				Text("Your coordinates are: \(location.longitude),\(location.latitude)")
			} else {
				if locationManager.isLoading {
					ProgressView()
				} else {
					WelcomeView()
						.environmentObject(locationManager)
				}
			}
        }
		.background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
		.preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        
    }
}

#Preview {
    ContentView()
}
