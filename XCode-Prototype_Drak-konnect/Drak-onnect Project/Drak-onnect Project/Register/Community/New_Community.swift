//
//  New_Community.swift
//  Drak-onnect Project
//
//  Created by Bryant Anthony Thauwrisan on 04/04/23.
//

import SwiftUI

struct New_Community: View {
    let CommunityList = communityList
    let GenreList = genreList
    let width = (UIScreen.main.bounds.width)-20
    let height = communityList.count
    @State var GenreModal = false
    @State var ActorModal = false
    //Cara limit Arraynya
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            HStack{
                Text("Based on Genres").padding(.leading,15).fontWeight(.bold)
                NavigationLink(destination: Genre_Community()){
                    Text("See More...").font(.system(size: 15)).padding(.trailing,15).frame(maxWidth: 350, alignment: .trailing).sheet(isPresented: $GenreModal, content: {
                        Genre_Community()
                    })
                    
                }
            }
            
            ForEach(CommunityList.prefix(3), id: \.self){CommunityList in VStack(alignment: .leading){
                ZStack{
                    NavigationLink(destination: Community_Profile()){
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: width, height: width/4).foregroundColor(Color(hue: 0.563, saturation: 0.5, brightness: 0.959))
                    }
                    Text("\(CommunityList)").fontWeight(.heavy)
                        .lineLimit(1)
                        .frame(maxWidth: 260, alignment: .leading).position(x:240, y:25).font(.system(size: 20))
                    
                    Image("ProfileGroup").resizable().scaledToFit().frame(width: width/4-15, height: width/4-15).cornerRadius(30).position(x:60, y:45)
                    VStack{
                        HStack{
                            Image(systemName: "star.fill").resizable().scaledToFit().frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                            Image(systemName: "star.fill").resizable().scaledToFit().frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                            Image(systemName: "star.fill").resizable().scaledToFit().frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                            Image(systemName: "star.leadinghalf.filled").resizable().scaledToFit().frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                            Image(systemName: "star").resizable().scaledToFit().frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                            
                        }.foregroundColor(.yellow)
                        Text("3.5/5").font(.system(size: 10)).padding(.top, -7).padding(.leading, -32.0)
                    }.frame(maxWidth: 260, alignment: .leading).position(x:245, y:75)
                    NavigationLink{ Community_Profile_Joined()} label: {
                        Text("Join")
                    }.frame(width:80, height: 30)
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(12).navigationBarBackButtonHidden(true).position(x: 335, y:70)
                }
            }
            }
            HStack{
                Text("Based on Actor").padding(.leading,15).fontWeight(.bold)
                NavigationLink(destination: Actor_Community()){
                    Text("See More...").font(.system(size: 15)).padding(.trailing,15).frame(maxWidth: 350, alignment: .trailing)
                }
            }.padding(.top)
            
            ForEach(CommunityList.prefix(3), id: \.self){CommunityList in VStack(alignment: .leading){
                ZStack{
                    NavigationLink(destination: Community_Profile()){
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: width, height: width/4).foregroundColor(Color(hue: 0.563, saturation: 0.5, brightness: 0.959))
                        
                    }
                    Text("\(CommunityList)").fontWeight(.heavy)
                        .lineLimit(1)
                        .frame(maxWidth: 260, alignment: .leading).position(x:240, y:25).font(.system(size: 20))
                    
                    Image("ProfileGroup").resizable().scaledToFit().frame(width: width/4-15, height: width/4-15).cornerRadius(30).position(x:60, y:45)
                    VStack{
                        HStack{
                            Image(systemName: "star.fill").resizable().scaledToFit().frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                            Image(systemName: "star.fill").resizable().scaledToFit().frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                            Image(systemName: "star.fill").resizable().scaledToFit().frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                            Image(systemName: "star.fill").resizable().scaledToFit().frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                            Image(systemName: "star").resizable().scaledToFit().frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                            
                        }.foregroundColor(.yellow)
                        Text("4/5").font(.system(size: 10)).padding(.top, -7).padding(.leading, -32.0)
                    }.frame(maxWidth: 260, alignment: .leading).position(x:245, y:75)
                    NavigationLink{
                        Community_Profile_Joined()
                    } label: {
                        Text("Join")
                    }.frame(width:80, height: 30)
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(12).navigationBarBackButtonHidden(true).position(x: 335, y:70)
                }
            }
            }
        }.padding(.top,55)
    }
}

struct New_Community_Previews: PreviewProvider {
    static var previews: some View {
        New_Community()
    }
}
