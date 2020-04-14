//
//  StartPlayerRow.swift
//  rocketsEBook
//
//  Created by 潘昱任 on 2020/4/12.
//  Copyright © 2020 ntouyujen. All rights reserved.
//

import SwiftUI

struct StartPlayerRow: View {
    let startplayer: StartPlayer
    var body: some View {
       HStack{
            Image(startplayer.engName)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.red, lineWidth: 4))
                .shadow(radius: 5)
            VStack(alignment: .center){
                HStack{
                    Text(startplayer.number)
                    Text(startplayer.chiName)
                    }
                    Text(startplayer.engName)
                        
                        Text(startplayer.position)
                }
            .font(.custom("Marker Felt", size: 23))
            Spacer()
            
        }
    }
}

struct StartPlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        StartPlayerRow(startplayer: StartPlayer(chiName: "詹姆士哈登", engName: "James Harden", number: "#13", position: "得分後衛", intro: "我是大湖子", hot: "JamesHot", pic1: "JamesHot"))
    }
}
