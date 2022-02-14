//
//  AVFileType+Extensions.swift
//  YPImagePicker
//
//  Created by Nik Kov on 23.04.2018.
//  Copyright © 2018 Yummypets. All rights reserved.
//

import AVFoundation
import MobileCoreServices

extension AVFileType {
    /// Fetch and extension for a file from UTI string
    var fileExtension: String {
        let avFileTypeRawValue = self.rawValue
        let prefferedTag = UTTypeCopyPreferredTagWithClass(avFileTypeRawValue as CFString, kUTTagClassFilenameExtension)
        
        if let fileExt = prefferedTag?.takeRetainedValue() {
            return fileExt as String
        } else {
            return "none"
        }
    }
}
