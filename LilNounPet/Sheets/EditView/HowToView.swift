//
//  HowToView.swift
//  LilNounPet
//
//  Created by Jameson Hurst on 7/3/22.
//

import SwiftUI

struct HowToView: View {
    var body: some View {
        
        VStack {
            Text("Thanks for playing Lil Noun Pet!")
                .font(Font.custom("LondrinaSolid-Regular", size: 24, relativeTo: .title))
                .padding(.bottom)
            
            Text("""
                Prevent your Lil Noun’s slow march toward doom by providing it with food and water. Think Tamagotchi, but with Lil Nouns cc0 artwork! Each Lil Noun is randomly generated based on a large set of traits when the pet is hatched. Your pet’s appearance reflects its current state. If your pet is asleep, its eyes will be closed. If your pet dies, its eyes will be crossed out, etc.
                
                Your pet will perish if it hasn't been fed for 24 hours or given water for 12 hours. You can enable notifications to be notified 2 hours before your pet will pass away.
                """)
            
            Spacer()
        }
        .padding()
        
        
    }
}

struct HowToView_Previews: PreviewProvider {
    static var previews: some View {
        HowToView()
    }
}