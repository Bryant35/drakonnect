//
//  Tab_Bar.swift
//  Drak-onnect Project
//
//  Created by Bryant Anthony Thauwrisan on 04/04/23.
//

import SwiftUI

struct Tab_Bar: View {
    var body: some View {
        
        NavigationView{
            TabView{
                Community_List()
                    .tabItem{Label("Community", systemImage: "person.3.fill")}
                
                User_Profile()
                    .tabItem{Label("User Profile", systemImage: "person.circle.fill")}
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct Tab_Bar_Previews: PreviewProvider {
    static var previews: some View {
        Tab_Bar()
    }
}
