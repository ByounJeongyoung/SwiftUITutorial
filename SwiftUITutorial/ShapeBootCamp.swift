//
//  ShapeBootCamp.swift
//  SwiftUITutorial
//
//  Created by Young on 2021/08/02.
//

//------------------------    I Learned..   -----------------------------
//종류만 알자..
//frame 사용법과 trim의사용법
//stroke와fill함께 사용 방법 공부
//capsule은 커스텀 되어있는것이라면,RoundedRectangle는 직접 코너를 깍을수있다

//MARK:모양종류

//Circle()
//Ellipse()
//Capsule(style: .continuous)
//Rectangle()
//RoundedRectangle(cornerRadius: 25.0)
//MARK:속성

// .frame(width: 100, height: 200, alignment: .center)
// .fill(Color.green) 효과 같음
// .foregroundColor(.pink)
// .trim(from : 0.5, to : 1.0)  //디자인적으로 사용
// .stroke(Color.blue,lineWidth:50) //선 색과 굵기
// .frame(width: 300 ,height : 200)

import SwiftUI

struct ShapeBootCamp: View {
    var body: some View {
        Circle()
    }
}

struct ShapeBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapeBootCamp()
    }
}
