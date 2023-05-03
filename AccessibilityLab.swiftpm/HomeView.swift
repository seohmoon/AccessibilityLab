import SwiftUI

struct HomeView: View {
    @State var sp1: Bool = false
    @State var sp2: Bool = false
    @State var sp3: Bool = false
    @State var sp4: Bool = false
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Accessibility Lab")
                    .font(.custom("EF_jejudoldam", size: 31))
                    .padding()
                VStack{
                    Text("Click the button to start")
                        .foregroundColor(Color(hex: "121C72"))
                        .font(.system(size: 18, weight: .medium))
                    
                    NavyButton(name: "Step 1 : What is Accessibility?", action: {sp1 = true})
                        .background(
                            NavigationLink(
                                destination: Step1Intro(goHome: $sp1), isActive: $sp1, label: {EmptyView()}
                            )
                            .isDetailLink(false)
                        )
                    NavigationLink(destination: Step2Intro(), isActive: $sp2){
                        NavyButton(name: "Step 2 : Study about Guidelines", action: {sp2 = true})
                    }
                    NavyButton(name: "Quiz : Review what you learned", action: {sp3 = true})
                        .background(
                            NavigationLink(
                                destination: Step3Intro(goHome: $sp3), isActive: $sp3, label: {EmptyView()}
                            )
                            .isDetailLink(false)
                        )
                    RedButton(name: "Let's do it in the Lab", action: {sp4 = true})
                        .background(
                            NavigationLink(
                                destination: Step4Intro(goHome: $sp4), isActive: $sp4, label: {EmptyView()}
                            )
                            .isDetailLink(false)
                        )
                    Image("al_home")
                        .resizable()
                        .frame(width: 345, height: 260)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
