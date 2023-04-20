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
                        .font(.custom("The Jamsil 4 Medium", size: 29))
                }
            }
        ).padding(EdgeInsets(top: 4, leading: 20, bottom: 5, trailing: 20))
    }
}

struct SmallNavyButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallNavyButton(name: "check"){}
    }
}
