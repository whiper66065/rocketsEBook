//
//  StartPlayerDetail.swift
//  rocketsEBook
//
//  Created by 潘昱任 on 2020/4/12.
//  Copyright © 2020 ntouyujen. All rights reserved.
//

import SwiftUI

struct StartPlayerDetail: View {
    @State private var show = false
    @State private var rotateDegree: Double = 0
    let startplayer: StartPlayer
    var body: some View {
        ZStack {
            VStack{
                Text(startplayer.engName)
                    .font(.custom("Marker Felt", size: 30))
                .foregroundColor(.red)
                if show {
                Image(startplayer.pic1)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle()
                    .stroke(Color.black, lineWidth: 8))
                    
                }
                Text(startplayer.intro)
                .font(.custom("Courier", size: 25))
                    .background(Color.blue)
                Text("⬇️投籃熱區⬇️")
                    .font(.custom("Courier", size: 20))
                    .offset(x:0,y:10)
                if show{
                Image(startplayer.hot)
                    .resizable()
                    .frame( height:350)
                    .transition(.scale)
                }
            }
                .rotationEffect(.degrees(rotateDegree))
                .animation(
                   Animation.linear(duration: 2)
                )
            .onAppear {
                self.show = true
                self.rotateDegree = 360
            }
//            Image(startplayer.hot)
//            .resizable()
//            .frame(width:250, height:250)
//            .offset(x:0,y:210)
        }
//        .background(Color(red:225/255, green:60/255, blue:60/255)
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.white]), startPoint: .bottom, endPoint: .top)
        .edgesIgnoringSafeArea(.all)
        .frame(width:800,height:1000)
        )
    }
}

struct StartPlayerDetail_Previews: PreviewProvider {
    static var previews: some View {
        StartPlayerDetail(startplayer: startplayers[0])
    }
}
