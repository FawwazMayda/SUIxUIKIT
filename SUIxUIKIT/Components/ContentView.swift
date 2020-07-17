//
//  ContentView.swift
//  SUIxUIKIT
//
//  Created by Muhammad Fawwaz Mayda on 17/07/20.
//  Copyright © 2020 Muhammad Fawwaz Mayda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var dataStore = academyStore()
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment: .leading) {
                Text("Countryball Lovers")
                    .font(Font.system(size: 32, weight: .bold, design: .monospaced))
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 30, trailing: 10))
                ForEach(dataStore.dataMentor,id: \.id) {mentors in
                    CardListView(mentors: mentors)
                }
            }.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
