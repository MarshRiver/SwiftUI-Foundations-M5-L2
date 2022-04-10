//
//  ContentView.swift
//  LearningApp
//
//  Created by Christopher Ching on 2021-03-03.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        ScrollView{
            LazyVStack{
                ForEach(model.modules){
                    module in
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                            .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
                            .padding()
                        
                        HStack{
                            Spacer()
                            Image("swift")
                                .resizable()
                                .frame(width: 116,height: 116)
                                .clipShape(Circle())
                            
                            Spacer()
                            
                            
                            //Text
                            VStack(alignment: .leading,spacing: 10){
                                
                                Text("Learn Swift").bold()
                                Text("some description").padding(.bottom,20)
                                HStack{
                                    Image(systemName: "text.book.closed")
                                        .resizable()
                                        .frame(width:15,height:15)
                                    Text("10 Lessons").font(.caption)
                                    Image(systemName: "clock")
                                        .resizable()
                                        .frame(width:15,height:15)
                                    Text("2 Hrs")
                                }
                            }
                            Spacer()
                        }.padding(.horizontal,20
                        )
                    }
                }
            }
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(ContentModel())
    }
}
