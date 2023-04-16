
import SwiftUI

public struct FontManager {
    public static func registerFonts() {
        registerFont(bundle: Bundle.main, fontName: "HSSantokki-Regular", fontExtension: ".ttf")
    }
    
    fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
        print(Bundle.main)
        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
              let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
              let font = CGFont(fontDataProvider) else {
            fatalError("Couldn't create font from data")
        }
        
        var error: Unmanaged<CFError>?
        
        CTFontManagerRegisterGraphicsFont(font, &error)
    }
}

//
//public struct CustomFontA {
//    public static func registerFonts(fontName: String) {
//        registerFont(bundle: Bundle.main , fontName: fontName, fontExtension: ".ttf") //change according to your ext.
//    }
//    fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
//
//        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
//              let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
//              let font = CGFont(fontDataProvider) else {
//            fatalError("Couldn't create font from data!!!")
//        }
//
//        var error: Unmanaged<CFError>?
//
//        CTFontManagerRegisterGraphicsFont(font, &error)
//    }
//}
//public struct CustomFontB {
//    public static func registerFonts(fontName: String) {
//        registerFont(bundle: Bundle.main , fontName: fontName, fontExtension: ".ttf") //change according to your ext.
//    }
//    fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
//
//        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
//              let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
//              let font = CGFont(fontDataProvider) else {
//            fatalError("Couldn't create font from data")
//        }
//
//        var error: Unmanaged<CFError>?
//
//        CTFontManagerRegisterGraphicsFont(font, &error)
//    }
//}
//
//public struct CustomFontC {
//    public static func registerFonts(fontName: String) {
//        registerFont(bundle: Bundle.main , fontName: fontName, fontExtension: ".ttf") //change according to your ext.
//    }
//    fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
//
//        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
//              let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
//              let font = CGFont(fontDataProvider) else {
//            fatalError("Couldn't create font from data")
//        }
//
//        var error: Unmanaged<CFError>?
//
//        CTFontManagerRegisterGraphicsFont(font, &error)
//    }
//}
//
