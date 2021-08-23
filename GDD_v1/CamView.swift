//
//  CamView.swift
//  GDD_v1
//
//  Created by Mandeep Khokhar on 14/07/21.
//

import SwiftUI

struct CamView: View {
  @State var useCam: Bool = false
  @State var image: Image? = nil
  @State var showCaptureImageView: Bool = false
  @State var inputImage: UIImage? = nil
  
  @ObservedObject var imageModel: ClassifierModel
  @State var prediction: String
  let screenSize: CGRect = UIScreen.main.bounds
  var body: some View {
    ZStack {
      VStack {
        // 1
        VStack{
            if image == nil {
                RoundedRectangle(cornerRadius: 6.0).stroke(Color.blue, lineWidth: 2).frame(width: screenSize.width, height: 250)
            }
            else {
                image?.resizable()
                    .background(RoundedRectangle(cornerRadius: 6.0).stroke(Color.blue, lineWidth: 2)).frame(width: screenSize.width, height: 250)
            }

        }
        // 2
        HStack{
            Spacer()
            Button(action: {
                self.useCam = true
                self.showCaptureImageView.toggle()
                self.prediction = ""
            }) {
                HStack{
                    Image(systemName: "photo.on.rectangle.angled").padding()
                    Text("Camera").bold().padding()
                }.background(RoundedRectangle(cornerRadius: 6.0).stroke(Color.blue, lineWidth: 2))
                .foregroundColor(.blue)
            }.padding()
            Spacer()
            
            Button(action: {
                self.useCam = false
                self.showCaptureImageView.toggle()
                self.prediction = ""
            }) {
                HStack{
                    Image(systemName: "photo.on.rectangle.angled").padding()
                    Text("Gallery").bold().padding()
                }.background(RoundedRectangle(cornerRadius: 6.0).stroke(Color.blue, lineWidth: 2))
                .foregroundColor(.blue)
            }.padding()
            Spacer()
        }

        // 3
        Button(action: {
            self.imageModel.getPredictions(inputImage!)
            prediction = String(self.imageModel.results[0].imageLabel)
        }) {
                HStack{
                    Image(systemName: "cpu").padding()
                    Text("Get predictions").bold().padding()
                }.background(RoundedRectangle(cornerRadius: 6.0).stroke(Color.blue, lineWidth: 2))
                .foregroundColor(.blue)
       }
      // 4
        if prediction.isEmpty {
            Spacer()
            Text(" ")
            Spacer()
        }
        else {
            Spacer()
            VStack{
                Text("Image status: ").bold()
                                      .padding()
                                      .foregroundColor(.blue)
                                      .font(.system(size: 19))
                Text(prediction).bold()
                                .foregroundColor(.blue)
                                .font(.system(size: 19))
                if prediction == "Black rot"{
                    NavigationLink(
                        destination: BlackRot(),
                        label: {
                            VStack{
                                Spacer()
                                Text("Recommendations")
                                Spacer()
                            }
                        })
                }
                else if prediction == "Esca" {
                    NavigationLink(
                        destination: Esca(),
                        label: {
                            VStack{
                                Spacer()
                                Text("Recommendations")
                                Spacer()
                            }
                        })
                }
                else if prediction == "Leaf_blight" {
                    NavigationLink(
                        destination: LeafBlight(),
                        label: {
                            VStack{
                                Spacer()
                                Text("Recommendations")
                                .font(.system(size: 20))
                                Spacer()
                            }
                        })
                }
            }
            Spacer()
        }
      }
      if (showCaptureImageView) {
        CaptureImageView(isShown: $showCaptureImageView, image: $image, originalImage: $inputImage, useCamera: $useCam)
      }
    }
  }
  }


