//
//  ContentView.swift
//  LearningApp
//
//  Created by Chris Percival on 4/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model:ContentModel
    
    var body: some View {
        ScrollView{
            LazyVStack{
                
                //Confirm that currentModule is set
                if model.currentModule != nil{
                    ForEach(model.currentModule!.content.lessons) { lesson in
                        
                        //lesson card
                        ZStack (alignment: .leading){
                            //Background
                            Rectangle()
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                                .frame(height: 66)
                            HStack{
                                Text(String(lesson.id+1))
                                    .bold()
                                    .padding()
                                VStack(alignment: .leading){
                                    Text(lesson.title).font(.title3)
                                    Text(lesson.duration)
                                }
                            }
                        }
                        
                    }
                }
            }.padding().navigationTitle("Learn \(model.currentModule?.category ?? "")")
            .padding()
            .accentColor(.black)
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView().environmentObject(ContentModel())
//    }
//}
