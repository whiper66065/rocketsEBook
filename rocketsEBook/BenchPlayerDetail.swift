//
//  BenchPlayerDetail.swift
//  rocketsEBook
//
//  Created by 潘昱任 on 2020/4/12.
//  Copyright © 2020 ntouyujen. All rights reserved.
//

import SwiftUI

struct BenchPlayerDetail: View {
    @State private var show = false
    @State private var rotateDegree: Double = 0
    let benchplayer: BenchPlayer
        var body: some View {
            ZStack {
            
                VStack{
                    Text(benchplayer.engName)
                    .font(.custom("Marker Felt", size: 30))
                    .foregroundColor(.red)
                    if show {
                    Image(benchplayer.pic1)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    
                    .overlay(Circle().stroke(Color.black, lineWidth: 8))
                    }
                    Text(benchplayer.intro)
                    .font(.custom("Courier", size: 25))
                    .background(Color.blue)
                    Text("⬇️投籃熱區⬇️")
                        .font(.custom("Courier", size: 20))
                    .offset(x:0,y:10)
                    
                    if show {
                    Image(benchplayer.hot)
                        .resizable()
                        .frame(height:350)
                        .transition(.scale)
                    }
                }
                .rotationEffect(.degrees(rotateDegree))
                .animation(
                   Animation.linear(duration: 2)
                )
                .onAppear {
                    self.show = true
                }
            }
//            .background(Color(red:225/255, green:60/255, blue:60/255)
                .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.white]), startPoint: .bottom, endPoint: .top)
                   .edgesIgnoringSafeArea(.all)
                   .frame(width:800,height:1000)
                   )
        }
    }

struct BenchPlayerDetail_Previews: PreviewProvider {
    static var previews: some View {
        BenchPlayerDetail(benchplayer: benchplayers[0])
    }
}
