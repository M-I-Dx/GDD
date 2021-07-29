//
//  BlackRot.swift
//  GDD_v1
//
//  Created by Mandeep Khokhar on 26/07/21.
//

import SwiftUI

struct BlackRot: View {
    var body: some View {
        let screenSize: CGRect = UIScreen.main.bounds
        NavigationView{
        ZStack{
            Image("backg").ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false){
                VStack {
                    Spacer()
                    Text("Black Rot")
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
                    
                    Text("Black rot is one of the most serious diseases of grapes in the eastern United States. Crop losses can range from 5 to 80 percent, depending on the amount of disease in the vineyard, the weather, and variety susceptibility. The fungus Guignardia bidwelli can infect all green parts of the vine. Most damaging is the effect on fruit. Later fruit infections can destroy many grapes, even the entire crop.")
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
                    
                    Text("Infected prunings and mummified berries should be removed, burned, and/or buried in the soil before new growth begins in the spring. In vineyards with susceptible varieties or where black rot was a problem the previous year, early season fungicide sprays should be timed to prevent the earliest infections. Should infections become numerous, protecting against fruit rot is very difficult later in the growing season. Planting resistant varieties is strongly suggested.")
                        .padding(.leading)
                        .frame(maxWidth: screenSize.width)
                        .font(.system(size: 19))
                        .foregroundColor(Color.white)
                    
                    Text("Further reading")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                    Link("Read more!", destination: URL(string: "https://extension.psu.edu/black-rot-on-grapes-in-home-gardens")!)
                        .font(.system(size: 19))
                        .foregroundColor(Color.white)
                        }
                
            }
          }
        }
      }
}

struct BlackRot_Previews: PreviewProvider {
    static var previews: some View {
        BlackRot()
    }
}
