import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Accessibility Lab")
                .font(.system(size: 38))
                .padding()
            VStack{
                Text("Click the button to follow the steps.")
                    .foregroundColor(Color(hex: "121C72"))
                NavyButton(name: "Step 1 : What is Accessibility?", action: {})
                NavyButton(name: "Step 2 : Study about Guidelines", action: {})
                NavyButton(name: "Step 3 : Take a Quiz and Review", action: {})
                NavyButton(name: "Step 4 : Let's do it in the Lab", action: {})
                Image("al_home")
                    .resizable()
                    .frame(width: 345, height: 260)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
