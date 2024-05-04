//
//  CountUpView.swift
//  GolfCountApp Watch App
//
//  Created by 北岡勇人 on 2024/05/01.
//

import SwiftUI

struct CountUpView: View {
    @AppStorage("count_up") var count = 0
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea(.all)
            VStack{
                Spacer()
                HStack{
                    Button(action: {
                        if(count > 0){
                            count -= 1
                        }
                    }){
                        ZStack{
                            Rectangle()
                                .frame(width: 80, height: 60)
                                .background(Color.white.edgesIgnoringSafeArea(.bottom))
                                .cornerRadius(15)
                            Image("arrow-icon")
                                .resizable()
                                .foregroundColor(.black)
                                .frame(width: 35, height: 35)
                                .background(Color.white.edgesIgnoringSafeArea(.bottom))
                                .cornerRadius(15)
                        }
                    }
                    .frame(width: 70, height: 60)
                    .padding()
                    
                    Button(action: {
                        count = 0
                    }){
                        ZStack{
                            Rectangle()
                                .frame(width: 80, height: 60)
                                .background(Color.white.edgesIgnoringSafeArea(.bottom))
                                .cornerRadius(15)
                            Image("delete-icon")
                                .resizable()
                                .renderingMode(.template)
                                .foregroundColor(.orange)
                                .foregroundColor(.black)
                                .frame(width: 35, height: 35)
                                .background(Color.white.edgesIgnoringSafeArea(.bottom))
                                .cornerRadius(15)
                        }
                    }
                    .frame(width: 70, height: 60)
                    .padding()
                }
//                .padding(.bottom, 10)
                Button(action: {
                    count += 1
                }){
                    Text("\(count)")
                        .bold()
                        .font(.custom("PtO-MarukkanaS-W9", size: 80))
                        .padding()
                        .frame(width: 170, height: 110)
                        .foregroundColor(Color.black)
                        .background(Color.white)
                        .cornerRadius(15)
                }
                .frame(width: 170, height: 90)
                .padding()
                Spacer()
            }
            .ignoresSafeArea(.all)
        }
    }
}

#Preview {
    CountUpView()
}
