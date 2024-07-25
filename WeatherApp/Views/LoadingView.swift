//
//  LoadingView.swift
//  WeatherApp
//
//  Created by Mark Mendoza on 2024-07-25.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
		ProgressView()
			.progressViewStyle(CircularProgressViewStyle(tint: .white))
			.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
    }
}

#Preview {
    LoadingView()
}
