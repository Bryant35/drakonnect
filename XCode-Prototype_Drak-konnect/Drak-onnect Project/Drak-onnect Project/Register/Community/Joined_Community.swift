//
//  Joined_Community.swift
//  Drak-onnect Project
//
//  Created by Bryant Anthony Thauwrisan on 04/04/23.
//

import SwiftUI

struct Joined_Community: View {
    let CommunityList = communityList
    let width = (UIScreen.main.bounds.width)-20
    let height = communityList.count
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            ForEach(CommunityList.prefix(9), id: \.self){CommunityList in VStack(alignment: .leading){
                NavigationLink(destination: Community_Profile_Joined()){
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: width, height: width/4).foregroundColor(Color(hue: 0.563, saturation: 0.5, brightness: 0.959))
                        Text("\(CommunityList)").fontWeight(.heavy)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
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
                            Text("4/5").font(.system(size: 10)).foregroundColor(colorScheme == .dark ? Color.white : Color.black).padding(.top, -7).padding(.leading, -32.0)
                        }.frame(maxWidth: 260, alignment: .leading).navigationBarBackButtonHidden(true).position(x:245, y:75)
                    }
                }
            }
            }.padding(.top, 55)
        }.navigationBarTitle("Joined Community")
        
    }
}

struct Joined_Community_Previews: PreviewProvider {
    static var previews: some View {
        Joined_Community()
    }
}
