//
//  10_PaddingAndSpacerBootcamp.swift
//  SwiftUITutorial
//
//  Created by Young on 2021/08/03.
//
/*
 1)일반적으로 정렬은 Stack(alignment: )내에서 하는것이 좋다
   Text는
   .multilineTextAlignment(.center)  => Text의 가운데 정렬
 
 2)Circle같은 객체는 fill로 채운다 나머지는 background
 
 3).overlay에서는   .overlay(Circle(), alignment: .center) alignment를 통해서 자신의 위치를 정한다
 
 
 4) => 겹치기 공식fill frame shadow ,overlay ,padding
*/


import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(){
            Spacer()
          
            VStack{
                VStack {
                    VStack(alignment: .center){
                        
                        Text("Testing Something")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .padding(.vertical)
                        
                        Text("This is the description of what we will do on this screen . it is multiple lines and we will align the text to the leading edge.")
                            .multilineTextAlignment(.center)
                          
                    }
                    .padding()
                    .padding(10)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.yellow.opacity(0.5), Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(20)
                    .shadow(color: Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)), radius: 10, x: 10.0, y: 10.0)
                    //.padding(20)
                    .overlay(
                        Circle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.red.opacity(0.7), Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))]), startPoint: .leading, endPoint: .trailing))
                            .frame(width: 50, height: 50) .overlay(Text("sam"),alignment: .center),alignment: .bottom)
                    
                    
                    
                    
                    
                    
                    VStack{
                        Text("Testing")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            
                        Text("This is another testing a number sentence with overlay etc This is another testing a number sentence with overlay etcThis is another testing a number sentence with overlay etcThis is another testing a number sentence with overlay etc")
                    }
                    .padding()
                    .frame(width: .infinity, height: 200, alignment: .leading)
                    .background(RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).opacity(0.9), Color.blue.opacity(0.8)]), center: .center, startRadius: 90, endRadius: 250))
                    .cornerRadius(20) //프레임을 다 설정후 깍는다
                    .shadow(color: .blue.opacity(0.6), radius: 10, x: 5.0, y: 15.0)
                    .padding(.bottom) //패딩을 줘야 swift마크가 걸쳐진다
                    .overlay(
                        Circle()
                            .fill(Color.purple.opacity(0.7))
                            .frame(width: 50, height: 50)
                            .shadow(color: .purple, radius: 10, x: 0.0, y: 10.0)
                            
                            .overlay(Text("Swift"))
                        ,alignment: .bottomTrailing
                    )
                            
                    
                }
                
            }
            
        
        VStack(alignment: .leading) {
            Text("Hello, World!Hello, World!")
                .background(Color.yellow)
                //.padding()
                .padding(.all, 10)
                .background(Color.blue)
            
            Text("Hello, World!Hello, World!")
                .background(Color.yellow)
                //.padding()
                .padding(.vertical, 10)
                .padding(.leading, 10) //2개 추가
                .background(Color.blue)
        }
            Spacer()
        }
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
