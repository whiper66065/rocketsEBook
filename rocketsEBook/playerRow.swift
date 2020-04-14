//
//  playerRow.swift
//  rocketsEBook
//
//  Created by 潘昱任 on 2020/4/11.
//  Copyright © 2020 ntouyujen. All rights reserved.
//

import SwiftUI

struct playerRow: View {
    let player: Player
    var body: some View {
        HStack{
            Image(player.engName)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.red, lineWidth: 4))
                .shadow(radius: 5)
            VStack(alignment: .center){
                HStack{
                Text(player.number)
                Text(player.chiName)
                }
                Text(player.engName)
                    
                    Text(player.position)
            }
            .font(.custom("Marker Felt", size: 23))
            Spacer()
            
        }
    }
}

struct playerRow_Previews: PreviewProvider {
    static var previews: some View {
        playerRow(player: Player(chiName: "詹姆士哈登", engName: "James Harden", number: "#13", position: "得分後衛"))
    }
}
