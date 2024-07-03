//
// File: windowReferenceAppApp.swift
// Package: windowReferenceApp
// Created by: Steven Barnett on 02/07/2024
// 
// Copyright © 2024 Steven Barnett. All rights reserved.
//
        

import SwiftUI

@main
struct windowReferenceAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowResizability(.contentSize)
    }
}
