//
//  14_ScrollView.swift
//  SwiftUITutorial
//
//  Created by Young on 2021/08/03.
//



/*
 ScrollView(.vertical, showsIndicators: true) 에서는 ()성분으로
 showsIndicators을 가릴수있습니다.
 
 또한 Scroll안에 Vstack 안에 각각의 오브젝트에 Scroll HStack 을 구현했습니다
 
 */
import SwiftUI

struct ScrollViewPractice: View {
    var body: some View {
        
        ScrollView{
            LazyVStack{
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack{
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.yellow)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                }
            }
        }
    }
}
struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewPractice()
    }
}
