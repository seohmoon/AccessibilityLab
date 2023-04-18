import SwiftUI

@main
struct MyApp: App {
    init() {
        CustomFontManager.registerFonts(fontName: "EF_jejudoldam")
        CustomFontManager.registerFonts(fontName: "The Jamsil 4 Medium")
    }
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}

