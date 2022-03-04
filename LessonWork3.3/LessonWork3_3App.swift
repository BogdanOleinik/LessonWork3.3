//
//  LessonWork3_3App.swift
//  LessonWork3.3
//
//  Created by Олейник Богдан on 04.03.2022.
//

import SwiftUI

@main
struct LessonWork3_3App: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
