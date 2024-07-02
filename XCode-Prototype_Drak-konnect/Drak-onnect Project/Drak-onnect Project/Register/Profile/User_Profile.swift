//
//  User_Profile.swift
//  Drak-onnect Project
//
//  Created by Bryant Anthony Thauwrisan on 04/04/23.
//

import SwiftUI
import UIKit

// no changes in your AppDelegate class


struct User_Profile: View {
    let listOfGenre = genreList
    let listOfActor = actorList
    
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                ZStack{//home profile background
                    Image("homeBackground").resizable().aspectRatio(contentMode: .fit)
                    Spacer()
                }
                ZStack{//white background
                    Image(systemName: "circle.fill").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fit).foregroundColor(Color.white).frame(width: 160.0, height: 160.0)
                    //Profile Picture
                    Image(systemName: "person.circle").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fit).foregroundColor(Color.blue).frame(width: 150.0, height: 150.0)
                }.position(x:195)
                HStack{
                    Text("Username").font(.system(size: 25)).fontWeight(.bold)
                    //                        Image(systemName: //edit image "square.and.pencil.circle").resizable()
                    //                            .frame(width: 25.0, height: 25.0)
                }.position(x: 195, y: -70)
                    Text("Menjelajahi dunia satu langkah dan satu gigitan makanan pada suatu waktu 🌍🍴 Suka berbagi pengalaman dan pemikiran tentang apa yang saya temukan di sepanjang jalan. Ikuti perjalanan saya dan mari kita berbagi kebahagiaan bersama! 😊")
                        .multilineTextAlignment(.center)
                        .lineLimit(3).font(.body)
                        .padding(.horizontal, 35.0).position(x:195, y: -70)
                ZStack{
                    RoundedRectangle(cornerRadius: 15).opacity(25).foregroundColor(Color(hue: 0.576, saturation: 0.407, brightness: 1.0)).frame(width: 350.0, height: 150.0).position(x:195, y: 0)
                    Text("Genres")
                        .fontWeight(.heavy).position(x:70, y:-50).font(.system(size: 20))
                    Rectangle().frame(width: 330, height: 2).offset(x: 0, y: -105)
                    
                    HStack{//perlu ganti button
                        ForEach(listOfGenre.prefix(3), id: \.self){ listOfGenre in
                            HStack(spacing: 4) {
                                Text("\(listOfGenre)").font(.body).foregroundColor(.white).lineLimit(1)
                            }
                            .padding(.vertical, 4)
                            .padding(.horizontal, 10).background(.blue)
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.blue, lineWidth: 1.5))
                        }
                    }.frame(maxWidth: 300, maxHeight: 120).position(x:195)
                    HStack{//perlu ganti button
                        ForEach(listOfGenre.prefix(3), id: \.self){ listOfGenre in
                            HStack(spacing: 4) {
                                Text("\(listOfGenre)").font(.body).foregroundColor(.white).lineLimit(1)
                            }
                            .padding(.vertical, 4)
                            .padding(.horizontal, 10).background(.blue)
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.blue, lineWidth: 1.5))
                        }
                    }.frame(maxWidth: 300, maxHeight: 120).position(x:195, y:40)
                    
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 15).opacity(25).foregroundColor(Color(hue: 0.576, saturation: 0.407, brightness: 1.0)).frame(width: 350.0, height: 150.0).position(x:195, y: 0)
                    Text("Actors")
                        .fontWeight(.heavy).position(x:70, y:-50).font(.system(size: 20))
                    Rectangle().frame(width: 330, height: 2).offset(x: 0, y: -105)

                    
                    HStack{//list Actor
                        ForEach(listOfActor.prefix(2), id: \.self){ listOfActor in
                            HStack(spacing: 4) {
                                Text("\(listOfActor)").font(.body).foregroundColor(.white).lineLimit(1)
                            }
                            .padding(.vertical, 4)
                            .padding(.horizontal, 10).background(.blue)
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.blue, lineWidth: 1.5))
                        }
                    }.frame(maxWidth: 300, maxHeight: 120).position(x:195)
                    HStack{//perlu ganti button
                        ForEach(listOfActor.prefix(2), id: \.self){ listOfActor in
                            HStack(spacing: 4) {
                                Text("\(listOfActor)").font(.body).foregroundColor(.white).lineLimit(1)
                            }
                            .padding(.vertical, 4)
                            .padding(.horizontal, 10).background(.blue)
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.blue, lineWidth: 1.5))
                        }
                    }.frame(maxWidth: 300, maxHeight: 120).position(x:195, y:40)
                }
            }
        }.ignoresSafeArea()
    }
}

struct User_Profile_Previews: PreviewProvider {
    static var previews: some View {
        User_Profile()
    }
}
