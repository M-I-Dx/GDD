//
//  FaqView.swift
//  GDD_v1
//
//  Created by Mandeep Khokhar on 10/07/21.
//

import SwiftUI

struct FaqView: View {
    
    let screenSize: CGRect = UIScreen.main.bounds
    var body: some View {
        NavigationView{
            ZStack {
                Image("backg").ignoresSafeArea()
                ScrollView(.vertical, showsIndicators: false){
                    VStack {
                        Spacer()
                        Text("FAQ")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        Spacer()
                        Text("Project overview")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        Text("Content")
                            .frame(maxWidth: screenSize.width)
                            .font(.system(size: 19))
                            .foregroundColor(Color.white)
                        Text("Upcomming updates")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        Text("Integrating state of the art MobileNetV2 model, trained via transfer learning for better prediction accuracy.")
                            .padding(.leading)
                            .frame(maxWidth: screenSize.width)
                            .font(.system(size: 19))
                            .foregroundColor(Color.white)
                        Spacer()
                        Text("Integrating object detection YoloV3 model for disease localisation. This model will be able to highlight the diseased part of the image")
                            .padding(.leading)
                            .frame(maxWidth: screenSize.width)
                            .font(.system(size: 19))
                            .foregroundColor(Color.white)
                            }
                    
                }
            }
            }
    }
}


struct FaqView_Previews: PreviewProvider {
    static var previews: some View {
        FaqView()
    }
}
