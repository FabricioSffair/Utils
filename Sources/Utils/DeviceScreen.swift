// The Swift Programming Language
// https://docs.swift.org/swift-book

import CoreGraphics
#if os(macOS)
import AppKit
#else
import UIKit
#endif

public final class DeviceScreen {
    public static var width: CGFloat {
#if os(iOS)
        UIScreen.main.bounds.width
#else
        NSScreen.main?.frame.width ?? 0
#endif
    }

    public static var isiPhoneSE: Bool {
#if os(macOS)
        false
#else
        UIApplication.isiPhoneSE
#endif
    }

    public static var isiPad: Bool {
#if os(iOS)
        UIDevice.current.userInterfaceIdiom == .pad
#else
        return false
#endif
    }

}
