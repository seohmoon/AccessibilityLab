import SwiftUI

struct Step1Explain: View {
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
            
            ScrollView(showsIndicators: true) {
                Image("s1intro")
                    .resizable()
                    .frame(width: 296, height: 292)
                Text("The goal of mobile accessibility is to provide a better experience for all users.")
                    .font(.custom("The Jamsil 4 Medium", size: 20))
                    .lineSpacing(6)
                    .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
                Text("One of the most common misconceptions about mobile accessibility is that the goal is to create content for people with vision or hearing disabilities.\n\nApproximately one in seven people have a disability that affects the way they interact with the world and their devices.\n\nPeople can experience disabilities at any age, for any duration, and at varying levels of severity. For example, situational disabilities such as a wrist injury from a fall or voice loss from overuse can affect the way almost everyone interacts with their devices at various times.")
                    .font(.system(size: 18, weight: .medium))
                    .lineSpacing(6)
                    .padding(EdgeInsets(top: 10, leading: 30, bottom: 20, trailing: 30))
//                Divider()
//                Text("The goal of mobile accessibility is to provide a better experience for all users.")
//                    .font(.custom("The Jamsil 4 Medium", size: 20))
//                    .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
//                Text("One of the most common misconceptions about mobile accessibility is that the goal is to create content for people with vision or hearing disabilities. It’s true that accommodations for people who use screen readers and other assistive technologies can improve your app’s functionality. However, you’ll need to consider the full spectrum of users when creating mobile content.")
////                    .padding()
//                    .font(.system(size: 18, weight: .medium))
//                    .lineSpacing(6)
//                    .padding(EdgeInsets(top: 0, leading: 30, bottom: 20, trailing: 30))
                SmallNavyButton(name: "Home", action: {goHome = false})
            }
        }
    }
}
//
//struct Step1Explane_Previews: PreviewProvider {
//    static var previews: some View {
//        Step1Explane()
//    }
//}

