//
//  ImageView.swift
//  LilNounPet
//
//  Created by Jameson Hurst on 6/25/22.
//

import SwiftUI
import WidgetKit

struct ImageView: View {
    @EnvironmentObject var vm : ViewModel
    
    var body: some View {
        ZStack {
            Image(vm.backgroundsArray[vm.chosenBackground])
                .resizable()
                .scaledToFill()
            ZStack {
                //only display the frog if it has been hatched; these string values are empty until the hatchview done "button" is pressed
                if !vm.pet.body.isEmpty || !vm.pet.accessory.isEmpty || !vm.pet.head.isEmpty || !vm.pet.glasses.isEmpty {
                    
                    Image(vm.pet.body)
                        .interpolation(.none)
                        .resizable()
                        .scaledToFit()
                    Image(vm.pet.accessory)
                        .interpolation(.none)
                        .resizable()
                        .scaledToFit()
                    Image(vm.pet.head)
                        .interpolation(.none)
                        .resizable()
                        .scaledToFit()
                    Image(vm.pet.glasses)
                        .interpolation(.none)
                        .resizable()
                        .scaledToFit()
                    Image(vm.pet.eyeExpression)
                        .interpolation(.none)
                        .resizable()
                        .scaledToFit()
                    if !vm.pet.hungerExpression.isEmpty {
                        Image(vm.pet.hungerExpression)
                            .interpolation(.none)
                            .resizable()
                            .scaledToFit()
                    }
                    if !vm.pet.thirstExpression.isEmpty {
                        Image(vm.pet.thirstExpression)
                            .interpolation(.none)
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
            
            
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
            .environmentObject(ViewModel())
    }
}
