//
//  BenchPlayerList.swift
//  rocketsEBook
//
//  Created by 潘昱任 on 2020/4/12.
//  Copyright © 2020 ntouyujen. All rights reserved.
//

import SwiftUI

struct BenchPlayerList: View {
    var body: some View {
        NavigationView {
        List(benchplayers.indices){(item) in
            NavigationLink(destination: BenchPlayerDetail(benchplayer: benchplayers[item])) {
                BenchPlayerRow(benchplayer: benchplayers[item])
            }
        }
        .navigationBarTitle(Text("替補球員"), displayMode: .inline)
        }
    }
}

struct BenchPlayerList_Previews: PreviewProvider {
    static var previews: some View {
        BenchPlayerList()
    }
}
