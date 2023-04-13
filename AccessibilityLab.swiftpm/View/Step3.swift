//
//  SwiftUIView.swift
//  
//
//  Created by 🤦🏻‍♀️ 🤦🏻‍♀️ on 2023/04/13.
//

import SwiftUI

struct Step3: View {
    var body: some View {
        VStack{
            Text("Step3")
            Text("Take a Quiz and Review")
            Text("Score")
            ZStack{
                Circle()
                    .fill(Color(hex: "EFEFEF"))
                    .frame(width: 260, height: 260)
                Text("100")
            }
            HStack{
                SmallNavyButton(name: "Retry", action: {})
                SmallNavyButton(name: "Home", action: {})
            }
        }
    }
}

struct Step3_Previews: PreviewProvider {
    static var previews: some View {
        Step3()
    }
}
