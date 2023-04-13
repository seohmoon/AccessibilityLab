//
//  SwiftUIView.swift
//  
//
//  Created by 🤦🏻‍♀️ 🤦🏻‍♀️ on 2023/04/13.
//

import SwiftUI

struct SmallNavyButton: View {
    var name : String
    var action: () -> Void
    var body: some View {
        Button(
            action:action,
            label:{
                ZStack{
                    RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).foregroundColor(Color(hex:"121C72"))
                        .frame(width: 130,height: 58)
                 Text(name)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                }
            }
        )
    }
}

struct SmallNavyButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallNavyButton(name: "check"){}
    }
}
