//
//  ContentView.swift
//  rocketsEBook
//
//  Created by 潘昱任 on 2020/4/11.
//  Copyright © 2020 ntouyujen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("wallpaper")
                .resizable()
            .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    Text("休士頓火箭")
                        .font(.system(size: 70)).fontWeight(.heavy)
                    Text("Houston Rockets")
                    .font(.custom("Marker Felt", size: 50))
                    
                }
                .foregroundColor(.orange)
                .padding()
                .cornerRadius(50)
                .offset(x:0,y:-100)
                .shadow(color: .red, radius: 2, x: 0, y: 15)
               
                Image("houstonstartinglineup")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500, height: 300)
                    .saturation(2)
                    .offset(x:0,y:190)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
