//
//  PhotoView.swift
//  rocketsEBook
//
//  Created by 潘昱任 on 2020/4/14.
//  Copyright © 2020 ntouyujen. All rights reserved.
//

import SwiftUI

struct PhotoView: View {
    func num(i:Int,j:Int)->Int{
        i*2+j
    }
    var body: some View {
                List {
                    
                    ScrollView(.horizontal){
                        HStack(spacing: 9) {
                            ForEach(1 ..< 6) { (item) in
                                Image("TeamPhoto"+String(item))
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 300, height: 300)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.white, lineWidth: 8))
                            }
                        }
                        
                    }
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 2, bottom: 5, trailing: 2))
                    
                    ForEach(3..<7) { (i) in
                        HStack(spacing:5) {
                            ForEach(0..<2) { (j) in
                                Rectangle()
                                    .overlay(
                                Image("TeamPhoto"+String(self.num(i:i,j:j)))
                                    .resizable()
                                    .scaledToFit()
                                    )
                                    .clipped()
                            }
                            
                        }
                        .frame(width: 409, height: 230)
//平板大小                .frame(width: 1105, height: 350)
                    }
                        
                    .listRowInsets(EdgeInsets(top: 0, leading: 2, bottom: 5, trailing: 2))
                }
                .onAppear {
                    UITableView.appearance().separatorColor = .clear
                }
                
            }
        }

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
    }
}
