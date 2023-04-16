import SwiftUI

struct NavyButton: View{
    var name : String
    var action: () -> Void
    var body: some View{
        Button(
            action:action,
            label:{
                ZStack{
                    RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).foregroundColor(Color(hex: "121C72")).offset(x:-4,y:5)
                    
                    RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).foregroundColor(Color(hex: "FFFFFF"))
                    
                    
                    RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).foregroundColor(Color(hex:"373F86"))
                        .frame(width: 270,height: 45)
                 Text(name).foregroundColor(.white)
                }.frame(width: 280,height: 50)
            }
        )
    }
}
struct NavyButtonPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        NavyButton(name: "step1 \n hello "){}
    }
}
