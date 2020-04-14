//
//  RocketsView.swift
//  rocketsEBook
//
//  Created by 潘昱任 on 2020/4/12.
//  Copyright © 2020 ntouyujen. All rights reserved.
//

import SwiftUI

struct RocketsView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "h.circle.fill")
                    Text("主頁")
            }
            TeamList()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("陣容")
            }
            PhotoView()
                .tabItem {
                        Image(systemName: "person.2.square.stack")
                        Text("球員獨照")
                }
        }
    }
}

struct RocketsView_Previews: PreviewProvider {
    static var previews: some View {
        RocketsView()
    }
}
