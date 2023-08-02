//
//  EmpetyListView.swift
//  myPlayer
//
//  Created by lsmiao on 2023/8/2.
//

import SwiftUI

struct EmpetyListView: View {
    var body: some View {
        List {
            ForEach(0 ..< 30) { index in

                HStack(spacing: 0) {}.frame(minWidth: 0, maxWidth: .infinity, minHeight: 20)
                    // 隔行变化背景颜色
                    .background(index % 2 == 0 ? Color("lightGrey") : Color.clear)
            }
        }
    }
}

struct EmpetyListView_Previews: PreviewProvider {
    static var previews: some View {
        EmpetyListView()
    }
}
