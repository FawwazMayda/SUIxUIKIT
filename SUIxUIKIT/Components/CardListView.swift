//
//  CardListView.swift
//  SUIxUIKIT
//
//  Created by Muhammad Fawwaz Mayda on 17/07/20.
//  Copyright © 2020 Muhammad Fawwaz Mayda. All rights reserved.
//

import SwiftUI

struct CardListView: View {
    var mentors: Mentor
    var body: some View {
        VStack(alignment: .leading) {
        
        
        Text(mentors.mentorType)
            .font(Font.system(size: 36, weight: .bold, design: .monospaced))
        
        
        ScrollView(.horizontal,showsIndicators: false) {
            HStack(spacing: 15.0){
                ForEach(mentors.mentors ,id: \.id) { mentor in
                    CardCellView(person: mentor)
                }
            }
        }
    }
}
}

struct CardListView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView(mentors: academyStore().dataMentor[0] )
    }
}
