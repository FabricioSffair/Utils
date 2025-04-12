// The Swift Programming Language
// https://docs.swift.org/swift-book

import CoreGraphics
#if os(macOS)
import AppKit
#else
import UIKit
#endif

@MainActor
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

    public static var deviceModel: String {
        #if os(iOS)
        UIDevice.current.model
#else
        return ""
#endif
    }

    public static var systemName: String {
        //    let systemName = await UIDevice.current.systemName
        #if os(iOS)
        return UIDevice.current.systemName
#else
        return Host.current().name ?? ""
#endif

    }
//    let deviceModel = await UIDevice.current.model
}
