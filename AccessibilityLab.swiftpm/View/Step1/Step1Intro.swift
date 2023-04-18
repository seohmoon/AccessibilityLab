import SwiftUI

struct Step1Intro: View {
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
            
            ScrollView(showsIndicators: true) {
                Image("s1intro")
                    .resizable()
                    .frame(width: 296, height: 292)
                    .zIndex(1)
                Text("Design with accessibility.")
                    .font(.custom("The Jamsil 4 Medium", size: 23))
                Text("Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.")
//                    .padding()
                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
            }
        }
    }
}

struct Step1Intro_Previews: PreviewProvider {
    static var previews: some View {
        Step1Intro()
    }
}

