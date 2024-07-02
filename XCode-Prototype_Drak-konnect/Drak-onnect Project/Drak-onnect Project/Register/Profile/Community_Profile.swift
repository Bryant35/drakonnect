//
//  Community_Profile.swift
//  Drak-onnect Project
//
//  Created by Bryant Anthony Thauwrisan on 05/04/23.
//

import SwiftUI

struct Community_Profile: View {
    let listOfGenre = genreList
    let listOfActor = actorList
    var totalMember = ["1","2","3","4","5","6","7","8","9","10"]
    
    var body: some View {
        ScrollView{
            VStack{
                VStack{
                    Image("homeBackground").resizable().aspectRatio(contentMode: .fit)
                    Spacer()
                }
                ZStack{//white background
                    Image(systemName: "circle.fill").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fit).foregroundColor(Color.white).frame(width: 160.0, height: 160.0).position(x:195)
                    Image(systemName: "person.2.circle").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fit).foregroundColor(Color.blue).frame(width: 150.0, height: 150.0).position(x:195)
                    
                    HStack(spacing: 4){//Join button
                        
                        HStack(spacing: 4) {
                            NavigationLink(destination: Community_Profile_Joined()){
                                Text("Join").font(.body).foregroundColor(.white).lineLimit(1)}
                        }
                        .padding(.vertical, 8)
                        .padding(.horizontal, 20).background(.blue)
                        .cornerRadius(20).position(x:335, y:30)
                        
                    }
                }.position(x:195, y:80)
                
                VStack{//username
                    HStack{
                        Text("Community Name").font(.system(size: 25)).fontWeight(.semibold)
                    }.position(x:195, y: 30)
                    HStack{
                        Image(systemName: "star.fill").resizable().scaledToFit().frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                        Image(systemName: "star.fill").resizable().scaledToFit().frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                        Image(systemName: "star.fill").resizable().scaledToFit().frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                        Image(systemName: "star.leadinghalf.filled").resizable().scaledToFit().frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                        Image(systemName: "star").resizable().scaledToFit().frame(width: 10, height: 10).cornerRadius(30).padding(.leading, -5)
                        
                    }.foregroundColor(.yellow).position(x:195, y:25)
                }.position(x:195, y: -70)
                VStack{//description
                    Text("Menjelajahi dunia satu langkah dan satu gigitan makanan pada suatu waktu 🌍🍴 Suka berbagi pengalaman dan pemikiran tentang apa yang saya temukan di sepanjang jalan. Ikuti perjalanan saya dan mari kita berbagi kebahagiaan bersama! 😊")
                        .multilineTextAlignment(.center)
                        .lineLimit(3).font(.body)
                        .padding(.horizontal, 30.0).position(x:195, y:40)
                }.padding(.top, -100)
                VStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 25).frame(width: 350, height: 150).padding(.top, 40).foregroundColor(Color(hue: 0.586, saturation: 0.473, brightness: 1.0))
                        Text("Discussion").font(.system(size: 20)).fontWeight(.bold).position(x:88, y:65)
                        
                        Rectangle().frame(width: 330, height: 2).position(x:197, y:85)
                        
                        RoundedRectangle(cornerRadius: 10).foregroundColor(.white).frame(width: 300, height: 80).position(x:197, y:135)
                        Text("Bagi kamu yang suka nonton drama Korea dan belum pernah menonton Descendants of the Sun, saya sarankan untuk nonton drama ini. Meskipun terlihat klise di awal, namun ceritanya menarik, akting dan lokasinya yang indah bisa membuat kamu terkesan dengan drama ini.").font(.system(size: 8)).foregroundColor(.black).multilineTextAlignment(.leading).lineLimit(4).position(x:130, y:120).frame(maxWidth: 270)
                        HStack{
                            Image(systemName: "person.circle")
                            Text("Username").font(.system(size: 11))
                        }.foregroundColor(.black).position(x: 96, y:160)
                        HStack{
                            Text("2,5k").font(.system(size: 11))
                            Image(systemName: "hand.thumbsup.circle")
                        }.foregroundColor(.black).position(x:315, y:160)
                    }
                }.padding(.top, -50)
                
                
                ZStack{//Genre
                    RoundedRectangle(cornerRadius: 25).frame(width: 350, height: 150).padding(.top, 20).foregroundColor(Color(hue: 0.586, saturation: 0.473, brightness: 1.0))
                    Text("Genre").font(.system(size: 20)).fontWeight(.bold).position(x:62, y:40)
                    Rectangle().frame(width: 330, height: 2).position(x:197,y: 60)
                    HStack{//perlu ganti button
                        ForEach(listOfGenre.prefix(3), id: \.self){ listOfGenre in
                            HStack(spacing: 4) {
                                Text("\(listOfGenre)").font(.body).foregroundColor(.blue).lineLimit(1)
                            }
                            .padding(.vertical, 4)
                            .padding(.horizontal, 10).background(.white)
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.blue, lineWidth: 1.5))
                        }
                    }.position(x:200, y:90)
                    HStack{//perlu ganti button
                        ForEach(listOfGenre.prefix(3), id: \.self){ listOfGenre in
                            HStack(spacing: 4) {
                                Text("\(listOfGenre)").font(.body).foregroundColor(.blue).lineLimit(1)
                            }
                            .padding(.vertical, 4)
                            .padding(.horizontal, 10).background(.white)
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.blue, lineWidth: 1.5))
                        }
                    }.position(x:200, y:130)
                }
                
                ZStack{//actor
                    RoundedRectangle(cornerRadius: 25).frame(width: 350, height: 150).padding(.top, 20).foregroundColor(Color(hue: 0.586, saturation: 0.473, brightness: 1.0))
                    Text("Actor").font(.system(size: 20)).fontWeight(.bold).position(x:62, y:40)
                    Rectangle().frame(width: 330, height: 2).position(x:197,y: 60)
                    HStack{//perlu ganti button
                        ForEach(listOfActor.prefix(2), id: \.self){ listOfActor in
                            HStack(spacing: 4) {
                                Text("\(listOfActor)").font(.body).foregroundColor(.blue).lineLimit(1)
                            }
                            .padding(.vertical, 4)
                            .padding(.horizontal, 10).background(.white)
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.blue, lineWidth: 1.5))
                        }
                    }.position(x:200, y:90)
                    HStack{//perlu ganti button
                        ForEach(listOfActor.prefix(2), id: \.self){ listOfActor in
                            HStack(spacing: 4) {
                                Text("\(listOfActor)").font(.body).foregroundColor(.blue).lineLimit(1)
                            }
                            .padding(.vertical, 4)
                            .padding(.horizontal, 10).background(.white)
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.blue, lineWidth: 1.5))
                        }
                    }.position(x:200, y:130)
                }
                ZStack{//Member
                    RoundedRectangle(cornerRadius: 25).frame(width: 350, height: 190).padding(.top, 20).foregroundColor(Color(hue: 0.586, saturation: 0.473, brightness: 1.0))
                    HStack{
                        Text("Member").font(.system(size: 20)).fontWeight(.bold)
                        Spacer().frame(width: 230)
                        Text("10").font(.system(size: 14))
                    }.position(x:198, y:45)
                    Rectangle().frame(width: 330, height: 2).position(x:196.5, y:70)
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(totalMember, id: \.self){totalMember in
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20).foregroundColor(.white)
                                    VStack{
                                        Image(systemName: "person.circle").resizable().scaledToFit().foregroundColor(.black).frame(width: 60)
                                        Text("Username \(totalMember)").font(.system(size: 12)).foregroundColor(.black).lineLimit(1)
                                    }
                                    
                                }.frame(width: 80, height: 100).position(x:80, y:136)
                            }
                        }.padding(.trailing, 40)
                    }.frame(width:350).position(x:195, y:108)
                }
            }
        }.ignoresSafeArea().padding(.bottom, 0.1)
    }
}



struct Community_Profile_Previews: PreviewProvider {
    static var previews: some View {
        Community_Profile()
    }
}
