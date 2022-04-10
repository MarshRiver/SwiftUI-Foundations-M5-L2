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
                    ForEach(model.currentModule!.content.lessons){lesson in
                        //lesson card
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                            .frame(width: 100, height: 100, alignment: .center)
                    }
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
