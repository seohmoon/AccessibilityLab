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
                    Text("Click the button to follow the steps.")
                        .foregroundColor(Color(hex: "121C72"))
                    NavigationLink(destination: Step1Intro(), isActive: $sp1){
                        NavyButton(name: "Step 1 : What is Accessibility?", action: {sp1 = true})
                    }
                    NavigationLink(destination: Step2Intro(), isActive: $sp2){
                        NavyButton(name: "Step 2 : Study about Guidelines", action: {sp2 = true})
                    }
                    NavigationLink(destination: Step3Intro(), isActive: $sp3){
                        NavyButton(name: "Step 3 : Take a Quiz and Review", action: {sp3 = true})
                    }
//                    NavigationLink(destination: Step4Intro(), isActive: $sp4){
//                        NavyButton(name: "Step 4 : Let's do it in the Lab", action: {sp4 = true})
//                    }
                    NavyButton(name: "Step 4 : Let's do it in the Lab", action: {sp4 = true})
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
