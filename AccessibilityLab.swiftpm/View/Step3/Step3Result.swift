//
//  SwiftUIView.swift
//  
//
//  Created by 🤦🏻‍♀️ 🤦🏻‍♀️ on 2023/04/13.
//

import SwiftUI

struct Step3Result: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.left")
                    .resizable()
                    .frame(width: 20, height: 20, alignment: .leading)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                Spacer()
            }
            Text("Step3")
                .font(.system(size: 38))
                .foregroundColor(Color(hex: "121C72"))
            Text("Take a Quiz and Review")
                .font(.system(size: 28))
            Text("Score")
                .font(.system(size: 28))
                .padding(EdgeInsets(top: 20, leading: 0, bottom: -10, trailing: 0))
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

struct Step3Result_Previews: PreviewProvider {
    static var previews: some View {
        Step3Result()
    }
}
