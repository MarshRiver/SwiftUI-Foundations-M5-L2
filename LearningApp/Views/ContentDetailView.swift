//
//  ContentDetailView.swift
//  LearningApp
//
//  Created by Chris Percival on 4/10/22.
//

import SwiftUI
//import AVKit


struct ContentDetailView: View {
    
    @EnvironmentObject var model:ContentModel
    
    var body: some View {
        
//        let lesson = model.currentLesson
//        VideoPlayer(player:
        Image(systemName: "star.fill")
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView()
    }
}
