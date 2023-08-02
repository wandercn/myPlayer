//
//  TitlebarView.swift
//  myPlayer
//
//  Created by lsmiao on 2023/8/2.
//

import SwiftUI

struct TitlebarView: View {
    @ObservedObject var player: AudioPlayer
    var body: some View {
        HStack(spacing: 0) {
            Button(action: {
                OpenSelectFolderWindws(player: player)
            }, label: {
                Image("folder.badge.plus")
            })
//        .help("导入音乐文件夹")

            Spacer()
            Button(action: toggleSidebar, label: {
                Image("sidebar.left")
            })
//        .help("隐藏左侧导航栏")
        }
    }
}

struct TitlebarView_Previews: PreviewProvider {
    static var previews: some View {
        TitlebarView(player: AudioPlayer())
    }
}
