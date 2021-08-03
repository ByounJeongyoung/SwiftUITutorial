//
//  9_VHZStack.swift
//  SwiftUITutorial
//
//  Created by Young on 2021/08/03.
//

import SwiftUI

struct VHZStack: View {
    //VStack -> Vertical
    //ZStack(alignment: .top) 정렬 정리 Stack안의 가로의 alignment가 정렬을 만든다
    
    //VStack만 정렬 한다면 Object마다 공간이 생긴다
    //=> Vstack()에서 Spacing을 0으로 하면 공간을 없앨수 있다(HStack)도 마찬가지이다
    //HStack -> Horizontal
    //ZStack -> (back to front)
    var body: some View {
        
/*
         같은결과가 나온다 ZStack을  Background로 구현가능하다는 생각을 하자
         하지만 Zstack이 좀 더 명확한 코드를 만든다
         */
        
        VStack(spacing:nil){
            
            ZStack(){ //안에 있는 object를 이동 시키려면 zStack활용이 편리ex)ZStack(aliignment : .bottom)
                Circle()
                    .frame(width:50, height: 50)

                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }

            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 50, height: 50,alignment: .bottom))
//-------------------------------------------------------
            Rectangle()
                .frame(width: .infinity, height: 3, alignment: .center)
//-------------------------------------------------------
                VStack(alignment: .center , spacing: 10){

                    Text("5")
                        .font(.largeTitle)
                        .underline()

                    Text("items in your cart:")
                        .font(.caption)
                        .foregroundColor(.gray)

                }
//-------------------------------------------------------
            Rectangle()
                .frame(width: .infinity, height: 3, alignment: .center)
//-------------------------------------------------------
       
            ZStack {
                Rectangle()
                    .fill(Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)))
                    .frame(width: 350, height: 300, alignment: .center)
            

                VStack(alignment: .leading, spacing: 10){
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 100, height: 50, alignment: .center)

                Rectangle()
                    .fill(Color.green)
                    .frame(width: 150, height: 50)
          
                ZStack{
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 200, height: 100, alignment: .center)

                    Circle()
                        .fill(Color.blue)
                        .frame(width: 150, height: 50, alignment: .center)
                }
            }
            }
        
        
            ZStack(alignment: .top) {
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 350, height: 300)


                    VStack(alignment: .leading){
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 150, height: 100)

                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 100, height: 100)

                        HStack(alignment:.bottom) {
                            Rectangle()
                                .fill(Color.purple)
                                .frame(width: 50, height: 50)

                            Rectangle()
                                .fill(Color.pink)
                                .frame(width: 75, height: 75)

                            Rectangle()
                                .fill(Color.blue)
                                .frame(width: 25, height: 25)
                        }
                        .background(Color.white)
                    }
                    .background(Color.black)
                }
        }
        
    }
}

struct VHZStack_Previews: PreviewProvider {
    static var previews: some View {
     
            VHZStack()
        
     
    }
}
