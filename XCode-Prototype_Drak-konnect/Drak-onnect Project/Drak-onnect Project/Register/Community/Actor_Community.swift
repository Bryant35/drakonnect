//
//  Actor_Community.swift
//  Drak-onnect Project
//
//  Created by Bryant Anthony Thauwrisan on 05/04/23.
//

import SwiftUI

struct Actor_Community: View {
    let CommunityList = communityList
    let width = (UIScreen.main.bounds.width)-20
    let height = communityList.count
    @State var searchText = ""
    @State private var Search: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
            ScrollView(.vertical,showsIndicators: false){
                ForEach(comList, id: \.self){comList in VStack(alignment: .leading){
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: width, height: width/4).foregroundColor(Color(hue: 0.563, saturation: 0.5, brightness: 0.959))
                        Text("\(comList)").fontWeight(.heavy)
                            .foregroundColor(Color.black)
                            .lineLimit(1)
                            .frame(maxWidth: 260, alignment: .leading).position(x:240, y:25).font(.system(size: 20))
                        
                        Image("ProfileGroup").resizable().scaledToFit().frame(width: width/4-15, height: width/4-15).cornerRadius(30).position(x:60, y:45)
                        VStack{
                            HStack{
                                Image(systemName: "star.fill").resizable().scaledToFit().foregroundColor(.yellow).frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                                Image(systemName: "star.fill").resizable().scaledToFit().foregroundColor(.yellow).frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                                Image(systemName: "star.fill").resizable().scaledToFit().foregroundColor(.yellow).frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                                Image(systemName: "star.fill").resizable().scaledToFit().foregroundColor(.yellow).frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                                Image(systemName: "star").resizable().scaledToFit().foregroundColor(.yellow).frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                                
                            }
                            Text("4/5").font(.system(size: 10)).padding(.top, -7).padding(.leading, -32.0)
                        }.frame(maxWidth: 260, alignment: .leading).position(x:245, y:75)
                        NavigationLink(destination: Community_Profile()){
                            Text("Join")
                                .padding(.all, 5.0).padding(.horizontal)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(12
                                ).position(x: 335, y:70)
                        }
                    }
                }
                }
            }.searchable(text: $searchText).navigationBarTitle("Based On Actors")
    }
    var comList: [String]{
        let lcCom = CommunityList.map{ $0.capitalized}
        return searchText == "" ? lcCom : lcCom.filter{
            $0.contains(searchText.capitalized)
        }
    }
}

struct Actor_Community_Previews: PreviewProvider {
    static var previews: some View {
        Actor_Community()
    }
}
