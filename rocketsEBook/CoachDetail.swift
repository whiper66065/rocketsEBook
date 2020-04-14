//
//  CoachDetail.swift
//  rocketsEBook
//
//  Created by 潘昱任 on 2020/4/13.
//  Copyright © 2020 ntouyujen. All rights reserved.
//

import SwiftUI

struct CoachDetail: View {
    @State private var rotateDegree: Double = 0
    var body: some View {
        ZStack {
            
            VStack {
                Button("Mike D'Antoni"){
                    self.rotateDegree = 360
                }
                    .font(.custom("Marker Felt", size: 40))
                    .offset(x:0,y:-50)
                
                
                Image("Michael D'Antoni")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 8))
                    .offset(x:0,y:-50)
                    .rotationEffect(.degrees(rotateDegree))
                    .animation(
                        Animation.linear(duration: 1)
                    .repeatCount(2, autoreverses: false)
                )
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        Image("Mike1")
                        .resizable()
                        .scaledToFill()
                            .frame(width: 200)
                        .clipped()
                        Image("Mike5")
                        .resizable()
                        .scaledToFill()
                            .frame(width: 200)
                        .clipped()
                        Image("Mike3")
                        .resizable()
                        .scaledToFill()
                            .frame(width: 200)
                        .clipped()
                        Image("Mike4")
                        .resizable()
                        .scaledToFill()
                            .frame(width: 200)
                        .clipped()
                        Image("Mike2")
                        .resizable()
                        .scaledToFill()
                            .frame(width: 200)
                        .clipped()
                    }
                    .frame(height: 200)
                    .padding(.horizontal, 5)
                }
                
            }
            .background(Color(red:225/255, green:60/255, blue:60/255)
            .edgesIgnoringSafeArea(.all)
            .frame(width:800,height:1000)
            )
        }
        
    }
}

struct CoachDetail_Previews: PreviewProvider {
    static var previews: some View {
        CoachDetail()
    }
}
