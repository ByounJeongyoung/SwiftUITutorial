//
//  ImageBootCamp.swift
//  SwiftUITutorial
//
//  Created by Young on 2021/08/02.
//

import SwiftUI



/* 1).renderingMode(.template) => Mark...etc => 형태에 맞게 색상 변경 가능
      추가적으로 foreground를 이용하여서 색상 변경
   2)scaledToFit(비율에 맞게 반영) , scaleToFill(Cliped를 이용하여서 잘라낼수있다)
   3)Resizable()과 frame을 함께 사용한다
 */
struct ImageBootCamp: View {
    var body: some View {
        Image("3")
            //.renderingMode(.template) //사진 색을 변화 이위치 중요(foregroun) ->rendering사용으로 항상 이렇게 사용할수있음
            .resizable()//1
            //.aspectRatio(contentMode: .fill)//3
            .scaledToFit()
            .frame(width: 300, height: 400)//2
            //.clipped()//4
            //.cornerRadius(30)  자동으로 잘리니깐 clipped사용안해도됌
           // .clipShape(
                
                //Circle() -주사용-
            // RoundedRectangle(cornerRadius: 25.0))
           // Circle())
    }
}

struct ImageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootCamp()
    }
}
