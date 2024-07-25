//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by Mark Mendoza on 2024-07-25.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
	@EnvironmentObject var locationManager: LocationManager
    var body: some View {
		VStack {
			VStack(spacing: 20) {
				Text("Welcome to the Weather App")
					.bold()
					.font(.title)
				
				Text("Please share your location to get the weather in your area")
					.padding()
			}
			.multilineTextAlignment(.center)
			.padding()
			
			LocationButton(.shareCurrentLocation) {
				locationManager.requestLocation()
			}
			.cornerRadius(30)
			.symbolVariant(.fill)
			.foregroundColor(.white)
		}
		.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
