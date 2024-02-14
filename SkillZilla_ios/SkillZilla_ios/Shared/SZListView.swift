//
//  SZListView.swift
//  SkillZilla_ios
//
//  Created by Marlon Henry on 2/13/24.
//

import SwiftUI

struct SZListView: View {
    @State var users:[String:String]
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SZListView_Previews: PreviewProvider {
    static var previews: some View {
        SZListView(users: ["":""])
    }
}
