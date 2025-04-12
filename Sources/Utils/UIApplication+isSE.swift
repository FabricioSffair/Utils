//
//  UIApplication+isSE.swift
//  Utils
//
//  Created by Fabricio  on 12/04/25.
//


#if os(macOS)
#else
import UIKit
#endif

#if os(macOS)
#else
public extension UIApplication {
    static var safeAreaInsets: UIEdgeInsets {
        let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        return scene?.windows.first?.safeAreaInsets ?? .zero
    }

    static var isiPhoneSE: Bool {
        safeAreaInsets.bottom == 0
    }
}
#endif
