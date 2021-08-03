//
//  BackgroundOverlay.swift
//  SwiftUITutorial
//
//  Created by Young on 2021/08/02.
//

import SwiftUI
//스택이라 순서 의미 없음
struct BackgroundOverlay: View {
    var body: some View {
//        Image(systemName: "heart.fill")
//            .font(.system(size: 40))
//            .foregroundColor(Color.white)
//            .background(
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100)
//                    .shadow(color: Color(#colorLiteral(red: 0.6862745098, green: 0.3215686275, blue: 0.8705882353, alpha: 0.3510841837)), radius: 5, x: 0.0, y: 10)
//                    .overlay(Circle()
//                                .fill(Color.blue)
//                                .frame(width: 35, height: 35)
//                                .overlay(Text("5")
//                                            .font(.headline)
//                                            .foregroundColor(.white)
//                                )
//                                .shadow(color: Color(#colorLiteral(red: 0.6862745098, green: 0.3215686275, blue: 0.8705882353, alpha: 0.3510841837)), radius: 3, x: 5.0, y: 5), alignment: .top)
//            )
//
//
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 50, height: 50), alignment: .topLeading)
//            .background(Rectangle()
//                            .fill(Color.red)
//                            .frame(width: 150, height: 150, alignment: .center),alignment: .bottomTrailing
//            )
//
        
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100, height: 100)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(Color.white)
//            ) //.white가능
//            .background(
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width: 120, height: 120)
//)
//
//
        
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//
//            .background(
//                //Color.red
//           // LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
//
//                Circle()//frame을 안해주면  그냥 위에 겹쳐보이기만함
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading
//                                         , endPoint: .trailing))
//                    .frame(width: 100, height: 100, alignment: .center)
//
//            )
//
//            .background(Circle()
//                            .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing)) //frame이 있어야한다
//            .frame(width: 120, height: 120, alignment: .center))
        Image(systemName:"heart.fill")
            .font(.system(size: 30))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)), Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 80, height: 80)
                    .shadow(color: Color(#colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)).opacity(0.5), radius: 10, x: 0.0, y: 10.0)//1.일단 shadow까지 모두 작성한다
                    .overlay( //2.겹쳐질 것 대입
                        Circle()
                            .fill(Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)))
                            .frame(width: 30, height: 30)
                            .shadow(color:Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).opacity(0.5), radius: 6, x: 0.0, y: 9.0)//2와 같이 모양 형태를 일단 작성한다
                            .overlay(//겹쳐질것 대입
                                Text("3")
                                    .foregroundColor(.black)), alignment: .bottomTrailing)
                    
               // Circle -> fill ->  frame -> shadow -> overay /---/ (Circle -> fill...... 반복)
            )
    }
}

struct BackgroundOverlay_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundOverlay()
    }
}
