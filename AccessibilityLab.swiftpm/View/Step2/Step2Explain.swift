import SwiftUI

//let textlist = [
//]

struct Step2Explain: View {
    @Binding var buttonNum: Int
    
    var body: some View {
        VStack{
            Text("Step 2")
                .foregroundColor(Color(hex: "121C72"))
                .font(.custom("EF_jejudoldam", size: 31))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 10, leading: 30, bottom: 5, trailing: 10))
            Text("Study about Guidelines")
                .font(.custom("The Jamsil 4 Medium", size: 29))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 10, leading: 35, bottom: 5, trailing: 10))
            
            ScrollView(showsIndicators: true) {
                Image("s2explain")
                    .resizable()
                    .frame(width: 285, height: 285)
                if buttonNum == 1 {
                    Text("VoiceOver")
                        .font(.custom("The Jamsil 4 Medium", size: 23))
                    Text("VoiceOver gives audible descriptions of onscreen content, helping people get information and navigate when they can’t see the screen. \n\nProvides an alternative description of all images that convey meaning, allowing VoiceOver users to fully experience the app. \n\nVoiceOver uses accessibility information from on-screen elements to help users navigate to all elements and understand their location and functionality.")
                        .font(.system(size: 18, weight: .medium))
                        .lineSpacing(6)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 20, trailing: 30))
                    
                } else if buttonNum == 2 {
                    Text("Color")
                        .font(.custom("The Jamsil 4 Medium", size: 23))
                    Text("Don’t rely solely on color to differentiate between objects or communicate important information. Be sure to provide text labels or glyph shapes to help everyone perceive it. \n\nMany factors affect color recognition, including strong contrast colors, font size, color brightness, and screen resolution.")
                        .font(.system(size: 18, weight: .medium))
                        .lineSpacing(6)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 20, trailing: 30))
                    Image("TableText")
                        .resizable()
                        .frame(width: 360, height: 167)
                    
                    Text("Contrast of adjacent colors in the UI must meet the minimum acceptable level. In general, smaller or lighter-weight text needs to have greater contrast to be legible. Use the following values for guidance.")
                        .font(.system(size: 18, weight: .medium))
                        .lineSpacing(6)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 20, trailing: 30))
                    
                } else if buttonNum == 3 {
                    Text("Text")
                        .font(.custom("The Jamsil 4 Medium", size: 23))
                    Text("As font size increases, keep text truncation to a minimum. In general, aim to display as much useful text in the largest accessibility font size as you do in the largest standard font size. \n\nIncrease the size of meaningful interface icons as font size increases. If you use interface icons to communicate important information, make sure they are easy to view at larger font sizes, too. ")
                        .font(.system(size: 18, weight: .medium))
                        .lineSpacing(6)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 20, trailing: 30))
                    
                } else if buttonNum == 4 {
                    Text("Effect")
                        .font(.custom("The Jamsil 4 Medium", size: 23))
                    Text("Be cautious when displaying moving or blinking elements. These effects can also be distracting and they aren’t useful for people with visual disabilities. Worse, some blinking elements can cause epileptic episodes. In all cases, avoid using movement and blinking as the only way to convey information.")
                        .font(.system(size: 18, weight: .medium))
                        .lineSpacing(6)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 20, trailing: 30))
                    
                } else if buttonNum == 5 {
                    Text("User input")
                        .font(.custom("The Jamsil 4 Medium", size: 23))
                    Text("Let people input information by speaking instead of typing. Adding a dictation button in a text entry field lets people choose speech as their preferred input method.  \n\nSupport Siri or Shortcuts for performing important tasks by voice alone. To learn more about enabling Siri interactions in your app, see Siri. ")
                        .font(.system(size: 18, weight: .medium))
                        .lineSpacing(6)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 20, trailing: 30))
                    
                } else if buttonNum == 6 {
                    Text("Button")
                        .font(.custom("The Jamsil 4 Medium", size: 23))
                    Text("Make the button larger so that users with motor impairments can clearly see and easily press, and give sufficient space around the button so that the height and width of the button are at least 9mm for easy pressing.")
                        .font(.system(size: 18, weight: .medium))
                        .lineSpacing(6)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 20, trailing: 30))
                    
                }

            }
        }
    }
}

