//
//  Bundle+Versions.swift
//  Utils
//
//  Created by Fabricio  on 12/04/25.
//

import Foundation

public extension Bundle {
    var releaseVersionNumber: String? {
        infoDictionary?["CFBundleShortVersionString"] as? String
    }

    var buildVersionNumber: String? {
        infoDictionary?["CFBundleVersion"] as? String
    }

    var buildDate: String {
        guard let executableURL = Bundle.main.executableURL,
              let creation = (try? executableURL.resourceValues(forKeys: [.creationDateKey]))?.creationDate else { return "" }
        return creation
            .formatted(.dateTime.day(.twoDigits).month(.twoDigits).year())
    }

}
