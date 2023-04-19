//
//  SwiftUIView.swift
//  
//
//  Created by 🤦🏻‍♀️ 🤦🏻‍♀️ on 2023/04/19.
//

import SwiftUI

struct Step1Intro: View {
    @State var changeView : Bool = false
    @State var sp1Ex : Bool = false
    
    @Binding var goHome: Bool
    
    var body: some View {
        VStack{
            Text("Step 1")
                .foregroundColor(Color(hex: "121C72"))
                .font(.custom("EF_jejudoldam", size: 31))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 10, leading: 30, bottom: 5, trailing: 10))
            Text("What is Accessibility? ")
                .font(.custom("The Jamsil 4 Medium", size: 29))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 10, leading: 35, bottom: 5, trailing: 10))
            Spacer()
            
            if changeView == false {
                Image("7")
                    .resizable()
                    .frame(width: 322, height: 241)
                Text("There are seven people.")
                    .font(.custom("The Jamsil 4 Medium", size: 20))
                    .padding(EdgeInsets(top: 40, leading: 0, bottom: 0, trailing: 0))
                Spacer()
                SmallNavyButton(name: "Click", action: {changeView = true})
                Spacer()
            } else {
                Image("6")
                    .resizable()
                    .frame(width: 322, height: 241)
                Text("What does this picture mean?")
                    .font(.custom("The Jamsil 4 Medium", size: 20))
                    .padding(EdgeInsets(top: 40, leading: 0, bottom: 0, trailing: 0))
                Spacer()
                SmallNavyButton(name: "Next", action: {sp1Ex = true})
                    .background(
                        NavigationLink(
                            destination: Step1Explain(goHome: $goHome), isActive: $sp1Ex, label: {EmptyView()}
                        )
                        .isDetailLink(false)
                    )
                Spacer()
            }
        }
    }
}

//struct Step1Intro_Previews: PreviewProvider {
//    static var previews: some View {
//        Step1Intro()
//    }
//}
