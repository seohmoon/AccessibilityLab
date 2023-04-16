import SwiftUI

struct Step1Intro: View {
    var body: some View {
        VStack{
            Text("Step1")
                .font(.system(size: 38))
                .foregroundColor(Color(hex: "121C72"))
            Text("What is Accessibility?")
                .font(.system(size: 28))
            
            ScrollView(showsIndicators: true) {
                Image("s1intro")
                    .resizable()
                    .frame(width: 296, height: 292)
                    .zIndex(1)
                Text("Design with accessibility in mind.")
                    .font(.system(size: 20))
                Text("Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.")
            }
        }
    }
}

struct Step1Intro_Previews: PreviewProvider {
    static var previews: some View {
        Step1Intro()
    }
}

