//
//  CaptureImageView.swift
//  GDD_v1
//
//  Created by Mandeep Khokhar on 14/07/21.
//
import SwiftUI
//import UIKit



struct CaptureImageView {
    /// MARK: - Properties
    @Binding var isShown: Bool
    @Binding var image: Image?
    @Binding var originalImage: UIImage?
    @Binding var useCamera: Bool
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(isShown: $isShown, image: $image, originalImage: $originalImage, useCamera: $useCamera)
    }
}


extension CaptureImageView: UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<CaptureImageView>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        if (UIImagePickerController.isSourceTypeAvailable(.camera)) && (useCamera){
            picker.sourceType = .camera
        }
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController,
                                context: UIViewControllerRepresentableContext<CaptureImageView>) {
        
    }
}
