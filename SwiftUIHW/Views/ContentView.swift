//
//  ContentView.swift
//  SwiftUIHW
//
//  Created by Павел Барташов on 25.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 1

    var body: some View {
        TabView(selection: $selectedTab) {
            FeedView()
                .tabItem {
                    Label("Feed", systemImage: "house.fill")
                }
                .badge("!")
                .tag(0)

            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
                .tag(1)

            PlayerView()
                .tabItem {
                    Label("Player", systemImage: "music.note")
                }
                .tag(2)

            VideoView()
                .tabItem {
                    Label("Video", systemImage: "film.fill")
                }
                .tag(3)

            RecorderView()
                .tabItem {
                    Label("Recorder", systemImage: "mic.fill")
                }
                .tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
