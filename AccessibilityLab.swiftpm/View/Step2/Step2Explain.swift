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
                    Text("VoiceOver gives audible descriptions of onscreen content, helping people get information and navigate when they can’t see the screen. \n\nProvide alternative descriptions for all images that convey meaning. If you don’t describe the meaningful images in your content, you prevent VoiceOver users from fully experiencing your app. \n\nMake sure VoiceOver users can navigate to every element. VoiceOver uses accessibility information from onscreen elements to help people understand the location of each element and what it can do.")
                        .font(.system(size: 18, weight: .medium))
                        .lineSpacing(6)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 20, trailing: 30))
                    
                } else if buttonNum == 2 {
                    Text("Color")
                        .font(.custom("The Jamsil 4 Medium", size: 23))
                    Text("Don’t rely solely on color to differentiate between objects or communicate important information. If you use color to convey information, be sure to provide text labels or glyph shapes to help everyone perceive it. \n\nPrefer system colors for text. When you use system colors in text, it responds correctly to accessibility settings such as Invert Colors and Increase Contrast\n\nUse strongly contrasting colors to improve readability. Many factors affect the perception of color, including font size and weight, color brightness, screen resolution, and lighting conditions. When you increase color contrast of visual elements like text, glyphs, and controls, you can help more people use your app in more situations.\n\nTo find out if the contrast of adjacent colors in your UI meets minimum acceptable levels, you can use Xcode’s Accessibility Inspector or an online color calculator based on the Web Content Accessibility Guidelines (WCAG) color contrast formula. In general, smaller or lighter-weight text needs to have greater contrast to be legible. Use the following values for guidance.")
                        .font(.system(size: 18, weight: .medium))
                        .lineSpacing(6)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 20, trailing: 30))
                    
                } else if buttonNum == 3 {
                    Text("Text")
                        .font(.custom("The Jamsil 4 Medium", size: 23))
                    Text("As font size increases, keep text truncation to a minimum. In general, aim to display as much useful text in the largest accessibility font size as you do in the largest standard font size. \n\nConsider adjusting layout at large font sizes. When font size increases, inline items and container boundaries can crowd text, making it less readable \n\nIncrease the size of meaningful interface icons as font size increases. If you use interface icons to communicate important information, make sure they are easy to view at larger font sizes, too. ")
                        .font(.system(size: 18, weight: .medium))
                        .lineSpacing(6)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 20, trailing: 30))
                    
                } else if buttonNum == 4 {
                    Text("Effect")
                        .font(.custom("The Jamsil 4 Medium", size: 23))
                    Text("Be cautious when displaying moving or blinking elements. Although subtle movement and blinking can draw people’s attention, these effects can also be distracting and they aren’t useful for people with visual disabilities. Worse, some blinking elements can cause epileptic episodes. In all cases, avoid using movement and blinking as the only way to convey information.")
                        .font(.system(size: 18, weight: .medium))
                        .lineSpacing(6)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 20, trailing: 30))
                    
                } else if buttonNum == 5 {
                    Text("User input")
                        .font(.custom("The Jamsil 4 Medium", size: 23))
                    Text("Let people input information by speaking instead of typing. Adding a dictation button in a text entry field lets people choose speech as their preferred input method. If you create a custom keyboard, be sure to include a microphone key for dictation. \n\nSupport Siri or Shortcuts for performing important tasks by voice alone. To learn more about enabling Siri interactions in your app, see Siri. \n\nWhen possible, don’t prevent people from selecting plain text. Many people rely on using selected text as input for translations and definitions.")
                        .font(.system(size: 18, weight: .medium))
                        .lineSpacing(6)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 20, trailing: 30))
                    
                } else if buttonNum == 6 {
                    Text("Button")
                        .font(.custom("The Jamsil 4 Medium", size: 23))
                    Text("We kept buttons large enough to be clearly visible and easy to tapwhich is really useful for users with motor disorders. To add even more accessibility we also used Assistive Touch which is a special feature to adjust touch sensitivity of a display. To make it comfortable for a user to tap on buttons we followed the rules that buttons should be min 9 mm both high and wide and there should be enough free space around them.")
                        .font(.system(size: 18, weight: .medium))
                        .lineSpacing(6)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 20, trailing: 30))
                    
                }
                
//                Text("Develop with accessibility in mind")
//                    .font(.custom("The Jamsil 4 Medium", size: 20))
//                Text("Approximately one in seven people have a disability that affects the way they interact with the world and their devices.\n\nPeople can experience disabilities at any age, for any duration, and at varying levels of severity. For example, situational disabilities — such as a wrist injury from a fall or voice loss from overuse — can affect the way almost everyone interacts with their devices at various times.")
//                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 20, trailing: 20))
//                SmallNavyButton(name: "Home", action: {})
            }
        }
    }
}

//struct Step2Explane_Previews: PreviewProvider {
//    static var previews: some View {
//        Step2Explain(buttonNum: 1)
//    }
//}

