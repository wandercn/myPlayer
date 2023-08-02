//
//  ContentView.swift
//  myPlayer
//
//  Created by lsm on 2023/8/1.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var player: AudioPlayer
    var body: some View {
        ZStack {
            ListContentView(player: player)
            PlayerView(player: player)
        }
        .frame(minWidth: 800, minHeight: 600)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(player: AudioPlayer(path: "/Users/lsmiao/Music/ACC音乐"))
                .environment(\.sizeCategory, .extraSmall)
        }
    }
}
