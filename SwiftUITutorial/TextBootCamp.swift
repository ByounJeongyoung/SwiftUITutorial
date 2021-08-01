//
//  TextBootCamp.swift
//  SwiftUITutorial
//
//  Created by Young on 2021/08/02.
//




//------------------------    I Learned..   -----------------------------

//Text

//.font(.largeTitle)    => 직관적이다 LargeTitle >  title > Headline
//.fontWeight(.medium)  =>      inheritet  >  black > semibold > light
//
//.underline(true, color: Color("CustomColor")) //밑줄 && 커스터마이징
//.italic()
//.strikethrough()  사선

//frame에서의 font
//.minimumScaleFactor(0.1)
//프레임이 작아질때 최대한 ...없이 맞춰서 나올수있게 글씨크기를 어디까지 허용해주겠냐?

import SwiftUI

struct TextBootCamp: View {
    var body: some View {
        Text("감사합니다감사합니다감사합니다감사합니다감사합니다감사합니다감사합니다감사합니다합니다감사합니다감사합니다감사합니다감사합니다합니다감사합니다감사합니다감사합니다감사합니다v합니다감사합니다감사합니다감사합니다감사합니다v감사합니다")
            //.font(.largeTitle) //직관적이므로 이것이 더 나음 특정상황시 size 직접입력
           // .fontWeight(.medium)
            
            .underline(true, color: Color("CustomColor"))//밑줄 커스터마이징
            .italic()
            .strikethrough()
            .minimumScaleFactor(0.1)
            
            .font(.system(size: 94, weight: .semibold, design: .default))//정확한 폰트의 사이즈를 원할때
            .foregroundColor(Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)))
            //정렬
            .multilineTextAlignment(.trailing)//다중의 글을 정렬형태
            .foregroundColor(.black)
            
            .frame(width: 200, height: 500, alignment: .leading)
            
            //프레임이 작아질때 최대한 ...없이 맞춰서 나올수있게 글씨크기를 어디까지 허용해주겠냐?
      
    }
}

struct TextBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootCamp()
    }
}
