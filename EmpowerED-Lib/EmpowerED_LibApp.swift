//
//  EmpowerED_LibApp.swift
//  EmpowerED-Lib
//
//  Created by Willie Bless Daniels on 22/07/2024.
//

import FirebaseCore
import SwiftUI

@main
struct EmpowerED_LibApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
