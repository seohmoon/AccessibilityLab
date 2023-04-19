import SwiftUI

struct Step2Intro: View {
    @State var bt1: Bool = false
    @State var bt2: Bool = false
    @State var bt3: Bool = false
    @State var bt4: Bool = false
    @State var bt5: Bool = false
    @State var bt6: Bool = false
    @State var buttonNum : Int = 0
    
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
            
                Image("s2intro")
                    .resizable()
                    .frame(width: 328, height: 220)
                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
                VStack{
                    HStack{
                        NavigationLink(destination: Step2Explain(buttonNum : $buttonNum ), isActive: $bt1){
                            Step2Button(name: "VoiceOver", action: {bt1 = true
                                buttonNum = 1
                            })
                        }
                        NavigationLink(destination: Step2Explain(buttonNum : $buttonNum ), isActive: $bt2){
                            Step2Button(name: "Color", action: {bt2 = true
                                buttonNum = 2
                            })
                        }
                    }
                    HStack{
                        NavigationLink(destination: Step2Explain(buttonNum : $buttonNum ), isActive: $bt3){
                            Step2Button(name: "Text", action: {bt3 = true
                                buttonNum = 3
                            })
                        }
                        NavigationLink(destination: Step2Explain(buttonNum : $buttonNum ), isActive: $bt4){
                            Step2Button(name: "Effect", action: {bt4 = true
                                buttonNum = 4
                            })
                        }
                    }
                    HStack{
                        NavigationLink(destination: Step2Explain(buttonNum : $buttonNum ), isActive: $bt5){
                            Step2Button(name: "User Input", action: {bt5 = true
                                buttonNum = 5
                            })
                        }
                        NavigationLink(destination: Step2Explain(buttonNum : $buttonNum ), isActive: $bt6){
                            Step2Button(name: "Button", action: {bt6 = true
                                buttonNum = 6
                            })
                        }
                    }
                    
//                    HStack{
//                        Step2Button(name: "Text", action: {})
//                        Step2Button(name: "Effect", action: {})
//                    }
//                    HStack{
//                        Step2Button(name: "User input", action: {})
//                        Step2Button(name: "Navigation", action: {})
//                    }
//                    SmallNavyButton(name: "Home", action: {})
                }
//
//
//                Text("VoiceOver")
//                    .font(.custom("The Jamsil 4 Medium", size: 23))
//                Text("VoiceOver gives audible descriptions of onscreen content, helping people get information and navigate when they can’t see the screen.")
//                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
//                Text("Content descriptions")
//                    .font(.custom("The Jamsil 4 Medium", size: 20))
//                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
//                Text("Provide alternative descriptions for all images that convey meaning. If you don’t describe the meaningful images in your content, you prevent VoiceOver users from fully experiencing your app. To create a useful description, start by reporting what would be self-explanatory to someone who is able to see the image. Because VoiceOver reads the text surrounding the image and any captions, focus your description on information that’s conveyed by the image itself.")
//                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 20))
//                Text("Give each screen a unique title and provide headings that identify sections in your information hierarchy. When people arrive on a screen, the title is the first piece of information they receive from an assistive technology. To help people understand the structure of your app, create a unique title for each screen that succinctly describes its contents or purpose. Similarly, people need accurate section headings to help them build a mental map of the information hierarchy of each screen.")
//                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 20))
//                Divider()
//                Text("Text display")
//                    .font(.custom("The Jamsil 4 Medium", size: 23))
//                Text("Increase the size of meaningful interface icons as font size increases. If you use interface icons to communicate important information, make sure they are easy to view at larger font sizes, too. When you use SF Symbols, you get icons that scale automatically with Dynamic Type size changes.")
//                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                    
                
//                SmallNavyButton(name: "Home", action: {goHome = false})
         
            
//
//            Text("Welcome")
//                .font(.custom("The Jamsil 4 Medium", size: 23))
//            Text("Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.")
//                .padding()
//            HStack{
//                SmallNavyButton(name: "Start", action: {})
//            }
        }
    }
}

struct Step2Intro_Previews: PreviewProvider {
    static var previews: some View {
        Step2Intro()
    }
}
    
