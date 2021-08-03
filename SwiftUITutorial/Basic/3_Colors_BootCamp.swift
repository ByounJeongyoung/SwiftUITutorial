//
//  ColorsBootCamp.swift
//  SwiftUITutorial
//
//  Created by Young on 2021/08/02.
//

//------------------------    I Learned..   -----------------------------


//[Color의 사용]

//Color.primary  => dark , light모드를 지원한다
//Color(literal) => Amazing! 색을 직접 볼수있고 custom 가능하다,주석을 하면 RGB가 나온다!
//Color(UIColor) => .primary와 비슷하나 secondarySystemBackground같은 특정 색을 사용할수있다 => 장점 : 다크모드 적용 가능

//[나만의 커스텀 다크모드 만들기!]
    //1.Assets.xcassets에들어가자
    //2.Colorset으로 폴더를 만들자 (이미지 첨부도 여기서 가능)
    //3.다크모드와 일반 모드일때 각각을 나눠서 아이템 글릭후 색 변경 가능!
    //4.Color("이름")을통해 호출 가능! 이때 Color는 객체!color : Color()

//모든 Color.opacity()를 줄수있다! => 투명도
//.frame()

//[그림자]
//.shadow(color, radius: , x: , y:) => radius는 여기서(shadow느낌! 따라서 Color.opacity를 굳이 사용할 필요 x)
//      =>"10이적당 높을수록 뿌옇게 된다 +x : right, +y : bottom"
//


import SwiftUI

struct ColorsBootCamp: View {
    var body: some View {
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(Color.red.opacity(0.9)
                  
                  // Color("CustomColor").opacity(0.9)
                  // Color(UIColor.secondarySystemBackground)
                  // Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            //.shadow(radius: 10)
            .shadow(color: Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)).opacity(0.9), radius: 10, x: 30, y: 30)
        
        
    }
}

struct ColorsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootCamp()
            .preferredColorScheme(.light)
        
    }
}
