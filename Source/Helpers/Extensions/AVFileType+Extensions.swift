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
        switch self {
        case .mov:
            return "mov"
        case .mp4:
            return "mp4"
        case .m4v:
            return "m4v"
        case .m4a:
            return "m4a"
        case .mobile3GPP:
            return "3gp"
        case .mobile3GPP2:
            return "3gp2"
        case .caf:
            return "caf"
        case .wav:
            return "wav"
        case .aiff:
            return "aiff"
        case .aifc:
            return "aifc"
        case .amr:
            return "amr"
        case .mp3:
            return "mp3"
        case .au:
            return "au"
        case .ac3:
            return "ac3"
        case .eac3:
            return "eac3"
        case .jpg:
            return "jpg"
        case .dng:
            return "dng"
        case .heic:
            return "heic"
        case .avci:
            return "avci"
        case .heif:
            return "heif"
        case .tif:
            return "tif"
        default:
            return "none"
        }
    }
}
