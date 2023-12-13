//
//  OnboardingView.swift
//  SkillZilla_ios
//
//  Created by Marlon Henry on 12/13/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
             TabView{
                    OnboardLRLS()
                    OnboardBuildComm()
                 OnboardDevDino()
                 
                }
             .tabViewStyle(.page(indexDisplayMode: .always))
             .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
