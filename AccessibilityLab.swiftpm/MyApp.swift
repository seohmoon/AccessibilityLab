import SwiftUI

@main
struct MyApp: App {
    init() {
//        CustomFontA.registerFonts(fontName: "EF_jejudoldam")
//        CustomFontB.registerFonts(fontName: "HSSantokki-Regular")
//        CustomFontC.registerFonts(fontName: "PretendardVariable")
        FontManager.registerFonts()
    }
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}

