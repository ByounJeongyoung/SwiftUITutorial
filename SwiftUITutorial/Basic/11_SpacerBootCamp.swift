//
//  11_SpacerBootCamp.swift
//  SwiftUITutorial
//
//  Created by Young on 2021/08/03.
//

import SwiftUI

//Spacer()   ->auto resizeable
//    .frame(height:10)
//    .background(Color.orange) //크기를 정할수있다

//Spacer(minLength) =>padding으로 둘러쌓여있을
//때 minlength로 넓힐수있다

//object를 옮기

struct SpacerBootCamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                HStack{
                    Image(systemName: "xmark")
                    Spacer()
                    Image(systemName: "gear")
                }
                .font(.largeTitle) //둘다 적용되면 한번에 stack에 감싸주자!!!!
                //.background(Color.yellow)
                .padding(.horizontal)
                //.background(Color.blue)
                
                Spacer()
//                    .frame(width: 10)
//                    .background(Color.orange)
                
                Rectangle()
                   .frame(height: 55)
                    //반반
            }
            //.background(Color.yellow)
            
            Spacer()
            HStack(spacing:0 ){
                
                Spacer(minLength: 10)
                    .frame(height: 10)
                    .background(Color.orange) //크기를 정할수있다
                
                Rectangle()
                    .frame(width: 50, height: 50)
                
                Spacer()
                    .frame(height:10)
                    .background(Color.orange) //크기를 정할수있다
                
             
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                
                Spacer()
                    .frame(height:10)
                    .background(Color.orange) //크기를 정할수있다
                
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 50, height: 50)
                
                
                Spacer(minLength: 30)
                    .frame(height:10)
                    .background(Color.orange) //크기를 정할수있다
                
            }
            .background(Color.yellow)
            .padding(.horizontal, 200)
            .background(Color.blue)
        }
       // .background(Color.blue)
    }
}

struct SpacerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootCamp()
    }
}
