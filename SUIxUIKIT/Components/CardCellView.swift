//
//  CardCellView.swift
//  SUIxUIKIT
//
//  Created by Muhammad Fawwaz Mayda on 17/07/20.
//  Copyright © 2020 Muhammad Fawwaz Mayda. All rights reserved.
//

import SwiftUI

struct CardCellView: View {
    var person: Person
    var body: some View {
        ZStack {
            Image(person.imageNamed)
                .resizable()
            VStack {
                Spacer()
                HStack{
                    Text(person.name)
                    Spacer()
                }.background(Color.black)
                    .foregroundColor(Color.white)
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 12.0))
    .frame(width: 240, height: 240)
    }
}

struct CardCellView_Previews: PreviewProvider {
    static var previews: some View {
        CardCellView(person: Person(name: "CountryBall", imageNamed: "german"))
    }
}
