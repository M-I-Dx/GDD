//
//  Coordinator.swift
//  GDD_v1
//
//  Created by Mandeep Khokhar on 14/07/21.
//

import SwiftUI
class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
  @Binding var isCoordinatorShown: Bool
  @Binding var imageInCoordinator: Image?
  @Binding var imageInUIImage: UIImage?
    
    init(isShown: Binding<Bool>, image: Binding<Image?>, originalImage: Binding<UIImage?>) {
    _isCoordinatorShown = isShown
    _imageInCoordinator = image
    _imageInUIImage = originalImage
  }
    
  func imagePickerController(_ picker: UIImagePickerController,
                didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
     guard let unwrapImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else { return }
     imageInUIImage = unwrapImage
     imageInCoordinator = Image(uiImage: unwrapImage)
     isCoordinatorShown = false
  }
  func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
     isCoordinatorShown = false
  }
}
