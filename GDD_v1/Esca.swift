//
//  Esca.swift
//  GDD_v1
//
//  Created by Mandeep Khokhar on 26/07/21.
//

import SwiftUI

struct Esca: View {
    var body: some View {
        
        let screenSize: CGRect = UIScreen.main.bounds
        NavigationView{
            ZStack{
                Image("backg").ignoresSafeArea()
                ScrollView(.vertical, showsIndicators: false){
                    VStack {
                        Spacer()
                        Text("Esca (Black Measles)")
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
                        
                        Text("Symptom appears on leaves, trunk, canes and berries. On leaves we will see intervenaial striping looks like tiger strips. White cultivars shows chlorotic and necrotic strips where as red cultivars shows red areas and necrotic strips. On berries we will see superficial spots and later may coalesce making berries appear black. Trunk/arm/cordons shows dark brown black vascular streaking and oozes dark sap when we cut trunk. Some time this measles in associate with numerous secondary wood rotting fungi which decorate the vineyard completely.")
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
                        
                        Text("Sanitation and vine surgery may help maintain yields. In spring, look for dead spurs or for stunted shoots. Later in summer, when there is a reduced chance of rainfall, practice good sanitation by cutting off these cankered portions of the vine beyond the canker, to where wood appears healthy. Then remove diseased, woody debris from the vineyard and destroy it. Vine surgery involves retraining new cordons or trunks as needed to maintain production. There is a higher success rate when retraining a new trunk, as most of the infections are concentrated in the upper portions of the permanent vine framework.")
                            .padding(.leading)
                            .frame(maxWidth: screenSize.width)
                            .font(.system(size: 19))
                            .foregroundColor(Color.white)
                        
                        Text("Further reading")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        
                        Link("Read more!", destination: URL(string: "http://ipm.ucanr.edu/PMG/r302100611.html")!)
                            .font(.system(size: 19))
                            .foregroundColor(Color.white)
                            }
                        }
                    }
            }
    }
}

struct Esca_Previews: PreviewProvider {
    static var previews: some View {
        Esca()
    }
}
