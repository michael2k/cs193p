//
//  ImagePicker.swift
//  EmojiArt
//
//  Created by Michael M. Kim on 2022/10/03.
//

import SwiftUI
import UIKit

typealias PickedImageHandler = (UIImage?) -> Void

struct ImagePicker: UIViewControllerRepresentable {
    var handlePickedImage: PickedImageHandler
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(handlePickedImage: handlePickedImage)
    }
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        var handlePickedImage: PickedImageHandler

        init(handlePickedImage: @escaping PickedImageHandler) {
            self.handlePickedImage = handlePickedImage
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            handlePickedImage(info[.originalImage] as? UIImage)
        }
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            handlePickedImage(nil)
        }
    }
}
