//
//  LeafBlight .swift
//  GDD_v1
//
//  Created by Mandeep Khokhar on 26/07/21.
//

import SwiftUI

struct LeafBlight: View {
    var body: some View {
        let screenSize: CGRect = UIScreen.main.bounds
        NavigationView{
            ZStack{
                Image("backg").ignoresSafeArea()
                ScrollView(.vertical, showsIndicators: false){
                    VStack {
                        Spacer()
                        Text("Leaf blight")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        Spacer()
                        Text("Overview")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        
                        Text("On leaf surface we will see lesions which are irregularly shaped (2 to 25 mm in diameter). Initially lesions are dull red to brown in color turn black later. If disease is severe this lesions may coalesce. On berries we can see symptom similar to black rot but the entire clusters will collapse.")
                            .padding(.leading)
                            .frame(maxWidth: screenSize.width)
                            .font(.system(size: 19))
                            .foregroundColor(Color.white)
                        
                        Spacer()
                        Text("Recommendations")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        
                        Text("Fungicides sprayed for other diseases in the season may help to reduce this disease.")
                            .padding(.leading)
                            .frame(maxWidth: screenSize.width)
                            .font(.system(size: 19))
                            .foregroundColor(Color.white)
                        
                        Text("Further reading")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        
                        Link("Read more!", destination: URL(string: "https://plantvillage.psu.edu/topics/grape/infos")!)
                            .font(.system(size: 19))
                            .foregroundColor(Color.white)
                            }
                    
                }
              }
    }

    }
}

struct LeafBlightPreviews: PreviewProvider {
    static var previews: some View {
        LeafBlight()
    }
}
