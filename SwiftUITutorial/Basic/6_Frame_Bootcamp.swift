//
//  FrameBootcamp.swift
//  SwiftUITutorial
//
//  Created by Young on 2021/08/02.
//

import SwiftUI


//frame 다음 background 구조
//frame에서 주는 alignment나 더 빨리 선언된 padding은 자신보다 안에있는것에 행해진디
//maxWidth나 maxHeight의 활용!

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!Hello")
            .background(Color.red)
            .frame(width: 100, height: 100, alignment: .center)
            .background(Color.yellow)
            .frame(width: 120, height: 120, alignment: .center)
            .background(Color.green)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color(#colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)))
            .frame(width: 300, height: 400, alignment: .topLeading)
            .background(Color.pink)
         
//            .padding()
//            .frame(width:100, height: 100, alignment: .leading)
//            .background(Color.red) //stack으로 쌓인다
//            .frame(height: 200, alignment: .top)
//            .background(Color.orange)
//            .frame(width: 200)
//            .background(Color.purple)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(Color.pink)
//            .frame(height:400)
//            .background(Color.green)
//            .frame(maxHeight : .infinity,alignment: .center)
//            .background(Color.yellow)
//
        
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
