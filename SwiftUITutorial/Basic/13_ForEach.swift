//
//  13_ForEach.swift
//  SwiftUITutorial
//
//  Created by Young on 2021/08/03.
//

import SwiftUI

struct ForEachEx: View {
    
    let data : [String] = ["Hi","dsdssd"]
    let myString : String = "Hello"
    
    var body: some View {
        VStack{
            ForEach(data.indices) { dataOne in
                Text("\(dataOne)")
            }
            ForEach(data.indices) { index in
                Text("New item \(index)")
            }
            Text(myString)
            //range 선택
//            ForEach(0..<10) { index in
//               // Text("Hi:\(index)")
//
//                HStack {
//                    Circle()
//                        .frame(width: 50, height: 50)
//                    Text("index is \(index)")
//                }
//            }
        }
    }
}

struct ForEach_Previews: PreviewProvider {
    static var previews: some View {
        ForEachEx()
    }
}
