//
//  TeamRow.swift
//  rocketsEBook
//
//  Created by 潘昱任 on 2020/4/11.
//  Copyright © 2020 ntouyujen. All rights reserved.
//

import SwiftUI

struct TeamRow: View {
    let team: Team
    var body: some View {
        HStack {
            Text(team.engName)
                .font(.custom("Marker Felt", size: 25))
            .frame(width: 100, height: 100)
                .background(Color.red)
                .clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth: 5))
                .shadow(radius: 5)
            VStack(alignment: .leading){
                Text(team.chiName)
                .font(.custom("Marker Felt", size: 35))
            }
            Spacer()
        }
    }
}

struct TeamRow_Previews: PreviewProvider {
    static var previews: some View {
        TeamRow(team: Team(engName: "Starters", chiName: "先發名單"))
        .previewLayout(.sizeThatFits)
            
    }
}
