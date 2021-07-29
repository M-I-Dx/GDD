//
//  ContentView.swift
//  GDD_v1
//
//  Created by Mandeep Khokhar on 10/07/21.
//

import SwiftUI


struct ContentView: View {
    let screenSize: CGRect = UIScreen.main.bounds
    
    var body: some View {
        NavigationView{
        ZStack {
            Image("backg").ignoresSafeArea()
            VStack {
                Spacer()
                Text("Grape disease detection")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .padding(/*@START_MENU_TOKEN@*/.all, 28.0/*@END_MENU_TOKEN@*/)
                    
                HStack() {
                    Spacer()
                    Spacer()
                    Image("g1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width: screenSize.width, height: screenSize.height*0.23)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Image("g2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width: screenSize.width, height: screenSize.height*0.23)
                    Spacer()
                    Spacer()
                }
                HStack {
                    Spacer()
                    Spacer()
                    Image("g3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width: screenSize.width, height: screenSize.height*0.23)
                    Spacer()
                    
                }
                Spacer()
                HStack() {
                    Spacer()
                    Spacer()
                    NavigationLink(
                        destination: FaqView()){
                        VStack {
                            Image(systemName: "info.circle.fill")
                                .foregroundColor(Color.white)
                            Text("FAQ")
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                }
                                    }
                    Spacer()
                    NavigationLink(
                        destination: CamView(imageModel: ClassifierModel(), prediction: String()))
                        {
                        VStack {
                            Image(systemName: "camera.fill")
                                .foregroundColor(Color.white)
                            Text("AI model")
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                        }
                    }
                    Spacer()
                    NavigationLink(
                        destination: TeamInfoView()){
                        VStack {
                            Image(systemName: "person.3.fill")
                                .foregroundColor(Color.white)
                            Text("Team info")
                                .foregroundColor(Color.white)
                        }
                    }
                    Spacer()
                    Spacer()
                }
                Spacer()
                Spacer()
                Spacer()
            }
            
          }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
