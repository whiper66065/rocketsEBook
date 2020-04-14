//
//  playerList.swift
//  rocketsEBook
//
//  Created by 潘昱任 on 2020/4/12.
//  Copyright © 2020 ntouyujen. All rights reserved.
//

import SwiftUI

struct playerList: View {
    var body: some View {
        List(players.indices){(index) in
            playerRow(player: players[index])
        }
    }
}

struct playerList_Previews: PreviewProvider {
    static var previews: some View {
        playerList()
    }
}
