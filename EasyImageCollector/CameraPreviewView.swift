//
//  CameraPreviewView.swift
//  EasyImageCollector
//
//  Created by Todd Krokowski on 9/9/19.
//  Copyright © 2019 Todd Krokowski. All rights reserved.
//

// This class is adapted from: https://developer.apple.com/documentation/avfoundation/cameras_and_media_capture/avcam_building_a_camera_app

import UIKit
import AVFoundation

class CameraPreviewView: UIView {
    var videoPreviewLayer: AVCaptureVideoPreviewLayer {
        guard let layer = layer as? AVCaptureVideoPreviewLayer else {
            fatalError("There was a problem initializing the preview mode")
        }
        return layer
    }
    
    var session: AVCaptureSession? {
        get {
            return videoPreviewLayer.session
        }
        set {
            videoPreviewLayer.session = newValue
        }
    }
    
    override class var layerClass: AnyClass {
        return AVCaptureVideoPreviewLayer.self
    }
}
