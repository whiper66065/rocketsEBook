//
//  StartPlayerList.swift
//  rocketsEBook
//
//  Created by 潘昱任 on 2020/4/12.
//  Copyright © 2020 ntouyujen. All rights reserved.
//

import SwiftUI

struct StartPlayerList: View {
    var body: some View {
            NavigationView {
            List(startplayers.indices){(item) in
                NavigationLink(destination: StartPlayerDetail(startplayer: startplayers[item])) {
                    StartPlayerRow(startplayer: startplayers[item])
                }
            }
            .navigationBarTitle(Text("先發球員"), displayMode: .inline)
            }
        }
}

struct StartPlayerList_Previews: PreviewProvider {
    static var previews: some View {
        StartPlayerList()
    }
}
