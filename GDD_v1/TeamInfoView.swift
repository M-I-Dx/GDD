//
//  TeamInfoView.swift
//  GDD_v1
//
//  Created by Mandeep Khokhar on 10/07/21.
//

import SwiftUI

struct TeamInfoView: View {
    var body: some View {
        let screenSize: CGRect = UIScreen.main.bounds
        NavigationView{
            ZStack {
                Image("backg").ignoresSafeArea()
                ScrollView(.vertical, showsIndicators: false){
                    VStack {
                        Spacer()
                        Text("Meet the team")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        Spacer()
                        Text("The project is supported by highly complementary partners who are experienced in computer science, medical informatics and software development.")
                            .padding(.leading)
                            .frame(maxWidth: screenSize.width)
                                .font(.system(size: 19))
                                .foregroundColor(Color.white)
                        VStack {
                            HStack{
                                Spacer()
                                Spacer()
                                Image("avleen").resizable().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                Text("Dr Avleen Malhi")
                                    .font(.system(size: 21))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                Spacer()
                                Spacer()
                            }
                            Text("Dr Avleen Malhi (Lecturer in Data Science and AI in department of computing and informatics at Bournemouth university, UK) is PI of the project who will assist in designing the AI system and mobile app development by taking the supervisory role.")
                                .font(.system(size: 19))
                                .foregroundColor(Color.white)
                                .padding(.leading)
                                .frame(maxWidth: screenSize.width)
                                
                            
                        }
                        Spacer()
                        VStack {
                            HStack{
                                Spacer()
                                Spacer()
                                Image("manik").resizable().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                Text("Dr Manik Madhikermi ")
                                    .font(.system(size: 21))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                Spacer()
                                Spacer()
                            }
                            Text("Dr Manik Madhikermi (postdoc researcher, Aalto University, Finland) who has 10 years of experience in software development and data science will be assisting in smartphone app development. ")
                                .font(.system(size: 19))
                                .foregroundColor(Color.white)
                                .padding(.leading)
                                .frame(maxWidth: screenSize.width)
                                
                            
                        }
                        Spacer()
                        VStack {
                            HStack{
                                Spacer()
                                Spacer()
                                Image("pannu").resizable().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                Text("Dr Husanbir Pannu ")
                                    .font(.system(size: 21))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                Spacer()
                                Spacer()
                            }
                            Text("Dr Husanbir Pannu who is an expert in machine learning and image processing will be assisting in ML model training and image acquisition steps.")
                                .font(.system(size: 19))
                                .foregroundColor(Color.white)
                                .padding(.leading)
                                .frame(maxWidth: screenSize.width)
                                
                            
                        }
                        VStack {
                            HStack{
                                Spacer()
                                Spacer()
                                Image("me").resizable().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                Text("Mandeep Khokhar")
                                    .font(.system(size: 21))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                Spacer()
                                Spacer()
                            }
                            Text("Mr. Mandeep will be hired as PTHP  – he is a junior year undergrad student who will be responsible for model and app development.")
                                .font(.system(size: 19))
                                .foregroundColor(Color.white)
                                .padding(.leading)
                                .frame(maxWidth: screenSize.width)
                                
                            Spacer()
                            Spacer()
                            Spacer()
                            
                        }
                        

                        
                            }
                }
            }
            }
      }
}
        


struct TeamInfoView_Previews: PreviewProvider {
    static var previews: some View {
        TeamInfoView()
    }
}
