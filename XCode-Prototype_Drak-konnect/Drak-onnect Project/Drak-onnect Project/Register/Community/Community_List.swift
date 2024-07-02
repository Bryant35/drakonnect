//
//  Community_List.swift
//  Drak-onnect Project
//
//  Created by Bryant Anthony Thauwrisan on 04/04/23.
//

import SwiftUI
import UIKit
struct Community_List: View {
    
    @State private var MenuCommunity = "Recommended"
    var body: some View {
        NavigationView{
            ZStack{
                if self.MenuCommunity == "Recommended" {
                    New_Community()
                } else if self.MenuCommunity == "My Community" {
                    Joined_Community()
                }
                VStack{
                    
                    
                    
                }
                VStack{
                    Picker("Communities", selection: $MenuCommunity){
                        Text("All").tag("Recommended")
                        Text("Joined").tag("My Community")
                    }.pickerStyle(.segmented).padding(.vertical, 5).padding(.horizontal,20).navigationTitle("\(MenuCommunity)").navigationBarTitleDisplayMode(.automatic).navigationBarBackButtonHidden(true).background(Color(uiColor: .systemGroupedBackground))
                        .buttonStyle(.bordered)
                        .controlSize(.mini)
                Spacer()
                }
            }
        }
    }
}

struct Community_List_Previews: PreviewProvider {
    static var previews: some View {
        Community_List()
    }
}
