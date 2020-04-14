//
//  TeamList.swift
//  rocketsEBook
//
//  Created by 潘昱任 on 2020/4/11.
//  Copyright © 2020 ntouyujen. All rights reserved.
//

import SwiftUI

struct TeamList: View {
    
    var body: some View {
                NavigationView {
                List{
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            Image("Rockets3")
                            .resizable()
                            .scaledToFill()
                                .frame(width: 200)
                            .clipped()
                            Image("Rockets4")
                            .resizable()
                            .scaledToFill()
                                .frame(width: 200)
                            .clipped()
                            Image("Rockets1")
                            .resizable()
                            .scaledToFill()
                                .frame(width: 200)
                            .clipped()
                            Image("Rockets2")
                            .resizable()
                            .scaledToFill()
                                .frame(width: 200)
                            .clipped()
                            Image("Rockets5")
                            .resizable()
                            .scaledToFill()
                                .frame(width: 200)
                            .clipped()
                            Image("Rockets6")
                            .resizable()
                            .scaledToFill()
                                .frame(width: 200)
                            .clipped()
                            Image("Rockets7")
                            .resizable()
                            .scaledToFill()
                                .frame(width: 200)
                            .clipped()
                            Image("Rockets8")
                            .resizable()
                            .scaledToFill()
                                .frame(width: 200)
                            .clipped()
                            Image("Rockets9")
                            .resizable()
                            .scaledToFill()
                                .frame(width: 200)
                            .clipped()
                            Image("Rockets10")
                            .resizable()
                            .scaledToFill()
                                .frame(width: 200)
                            .clipped()
                        }
                        .frame(height: 200)
                        .padding(.horizontal, 5)
                    }
                    Section(header: Text("點Starters看先發")){
                    ForEach(0 ..< 1){(item) in
                    NavigationLink(destination: StartPlayerList()) {
                    TeamRow(team: teams[item])
                            }
                        }
                    }
                    Section(header: Text("點Benches看替補")){
                    ForEach(1 ..< 2) {(item) in
                    NavigationLink(destination: BenchPlayerList()) {
                            TeamRow(team: teams[item])
                            }
                        }
                    }
                    Section(header: Text("點Coach看教練")){
                    ForEach(2 ..< 3) {(item) in
                    NavigationLink(destination: CoachDetail()) {
                            TeamRow(team: teams[item])
                            }
                        }
                    }
                }
                .navigationBarTitle(Text("休士頓火箭"), displayMode: .inline)
            }
}
}

struct TeamList_Previews: PreviewProvider {
    static var previews: some View {
        TeamList()
    }
}
