//
//  Disscussion_Community.swift
//  Drak-onnect Project
//
//  Created by Bryant Anthony Thauwrisan on 06/04/23.
//

import SwiftUI

struct Disscussion_Community: View {
    @State var GenreModal = false
    @State private var MenuDiscussion = "AllDiscussion"
    var body: some View {
        
            ZStack{
                if self.MenuDiscussion == "AllDiscussion" {
                    All_Discussion()
                } else if self.MenuDiscussion == "My Discussion" {
                    My_Discussion()
                }
                VStack{
                    
                    
                    
                }
                VStack{
                    Picker("Communities", selection: $MenuDiscussion){
                        Text("All").tag("AllDiscussion")
                        Text("My Discussion").tag("My Discussion")
                    }.pickerStyle(.segmented).padding(.vertical, 5).padding(.horizontal,20).navigationTitle("Discussion").navigationBarTitleDisplayMode(.automatic).background(Color(uiColor: .systemGroupedBackground))
                        .buttonStyle(.bordered)
                        .controlSize(.mini)
                        .toolbar{
                            Button{
                                GenreModal = true
                            } label: {
                                HStack{
                                    Image(systemName: "plus")
                                    Text("Add Discussion")}}.sheet(isPresented: $GenreModal, content: {
                                        Add_Discussion()
                                    })
                        }
                Spacer()
                }
            }
    }
}

struct Disscussion_Community_Previews: PreviewProvider {
    static var previews: some View {
        Disscussion_Community()
    }
}
