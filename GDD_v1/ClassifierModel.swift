//
//  ClassifierModel.swift
//  GDD_v1
//
//  Created by Mandeep Khokhar on 20/07/21.
//

import SwiftUI
import Vision
import CoreML


struct Result : Identifiable {
    var imageLabel: String
    var confidence: Double
    var id = UUID()
}


class ClassifierModel: ObservableObject {

    @Published var results: [Result]
    let modelFile = try! GrapeDiseaseDetection(configuration: MLModelConfiguration())
    
    init() {
        self.results = []
    }
    func getPredictions(_ image: UIImage) {
        self.results = []
        self.classifyImages(image)
    }
    
    
    func classifyImages(_ image: UIImage) {
        let convertedImage: CIImage? = CIImage(image: image)!
        let model = try! VNCoreMLModel(for: modelFile.model)
        let handler = VNImageRequestHandler(ciImage: convertedImage!)
        let request = VNCoreMLRequest(model: model) { (request, error) in
                    
                    // Make sure we were able to get results
                    guard let results = request.results as? [VNClassificationObservation] else {
                        print("Could not classify image")
                        return
                    }
                    
                    // Update our results variable
                    for classification in results {
                        
                        var identifier = classification.identifier
                        identifier = identifier.prefix(1).capitalized + identifier.dropFirst()
                        self.results.append(Result(imageLabel: identifier, confidence: Double(classification.confidence)))

                    }
                }
        do {
            try handler.perform([request])
        } catch {
            print("Invalid image")
            }

    }

}
