//
//  BenchPlayerRow.swift
//  rocketsEBook
//
//  Created by 潘昱任 on 2020/4/12.
//  Copyright © 2020 ntouyujen. All rights reserved.
//

import SwiftUI

struct BenchPlayerRow: View {
    let benchplayer: BenchPlayer
    var body: some View {
       HStack{
            Image(benchplayer.engName)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.red, lineWidth: 4))
                .shadow(radius: 5)
            VStack(alignment: .center){
                HStack{
                    Text(benchplayer.number)
                    Text(benchplayer.chiName)
                    }
                    Text(benchplayer.engName)
                        
                        Text(benchplayer.position)
                }
            .font(.custom("Marker Felt", size: 20))
            Spacer()
            
        }
    }
}

struct BenchPlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        BenchPlayerRow(benchplayer: BenchPlayer(chiName: "傑夫格林", engName: "Jeff Green", number: "#32", position: "大前鋒", intro: "我是大湖子", hot: "JamesHot", pic1: "JamesHot"))
    }
}
