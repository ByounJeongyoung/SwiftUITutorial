//
//  12_Init_Enum.swift
//  SwiftUITutorial
//
//  Created by Young on 2021/08/03.
//

//고정된 값을 사용시마다 커스텀하는것이 아닌 초깃값을 사용할때 사용 평상시보다 => 특별항때 사용

//enum: 한번 적어놓고 갖다쓰기



//view에서 여러번 사용할때 변수로 한번에 바꿀수있다
//변수의 값을 정하지 않으면 ㅂ에러가 생긴다 이때
//아래 PreviewProviderd 에서 초기화 시키면 된다
import SwiftUI

struct Init_Enum: View {
    
    let backgroundColor : Color  //= Color.red
    let title : String
    let count : Int //= 5
 
    init(fruit : Fruit , count : Int) {
        //self.title = title
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        }else{
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
       
    }
    
    enum Fruit {
        
        case apple
        case orange
        case grape
    }
    
    var body: some View {
        VStack(spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text("\(title)")
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct Init_Enum_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            //값을 미리 넣었습니다 이값들이 실행하면서 init에서 초기화 됩니다
            Init_Enum(fruit: .apple, count: 100)
            Init_Enum(fruit: .orange,  count: 100)
        }
        
    }
}
