//
//  IconsBootCamp.swift
//  SwiftUITutorial
//
//  Created by Young on 2021/08/02.
//

import SwiftUI

//Multicolor icon!
struct IconsBootCamp: View {
    var body: some View {
      Image(systemName: "person.fill.badge.plus")
        //.renderingMode(.original) //기존 색 살릴수있다
        //.font(.system(size: 200))
        //.font(.largeTitle) //텍스트 사진과 같이 사용할수있다
        //.font(.system(size: 150)) //물론 커스텀도 가능하다
       // .resizable() font를 사용하지 않고 frame을 사용한다면 이것을 써줘야 한다
        .scaledToFit()//아래와 동일
        //.aspectRatio(contentMode: .fit)//fill height만꽉참,fit은 비율에 맞춰서! 따라서 높이나 너비가 안맞을수있다
        .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
        .frame(width:200, height: 300)
        //.clipped()
         //fill을 사용시 프레임에 넘어가는곳은 잘라낸다,frame 뒤에!(다 그려놓고 잘라야하므로)
    }
}

struct IconsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootCamp()
    }
}
