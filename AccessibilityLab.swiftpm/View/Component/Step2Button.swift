
import SwiftUI

struct Step2Button: View {
    var name : String
    var action: () -> Void
    var body: some View {
        Button(
            action:action,
            label:{
                ZStack{
                    RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).foregroundColor(Color(hex:"121C72"))
                        .frame(width: 150,height: 48)
                        
                 Text(name)
                        .foregroundColor(.white)
                        .font(.custom("The Jamsil 4 Medium", size: 18))
                }.padding(EdgeInsets(top: 6, leading: 5, bottom: 6, trailing: 5))
            }
        )
    }
}

struct Step2Button_Previews: PreviewProvider {
    static var previews: some View {
        Step2Button(name: "check"){}
    }
}
