//
//  Discussion_Detail.swift
//  Drak-onnect Project
//
//  Created by Bryant Anthony Thauwrisan on 08/04/23.
//

import SwiftUI

struct Discussion_Detail: View {
    var value = ["1","2","3","4","5","6","7","8","9","10"]
    @State private var comment: String = ""
    @State private var showNavigationBar = true
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 20).foregroundColor(Color(hue: 0.564, saturation: 0.289, brightness: 0.982))
                    
                    Text("Bagi kamu yang suka nonton drama Korea dan belum pernah menonton Descendants of the Sun, saya sarankan untuk nonton drama ini. Meskipun terlihat klise di awal, namun ceritanya menarik, akting dan lokasinya yang indah bisa membuat kamu terkesan dengan drama ini.").font(.footnote).foregroundColor(.black).multilineTextAlignment(.leading).lineLimit(4).padding().frame(width: 370).position(x:180, y:45)
                    HStack{
                        Image(systemName: "person.circle").foregroundColor(.black)
                        Text("Username").font(.system(size: 9)).fontWeight(.bold).foregroundColor(.black)
                        Image(systemName: "circle.circle.fill").resizable().aspectRatio(contentMode: .fit).padding(.leading, -5.0).frame(width: 7, height: 7).foregroundColor(.green)
                        Text("5h ago").font(.system(size: 9)).padding(.leading, -5).foregroundColor(.black)
                    }.position(x:80, y: 93)
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 20).foregroundColor(.blue)
                        SwiftUI.HStack{
                            Image(systemName: "bubble.left.fill").resizable().scaledToFit().frame(width: 15, height: 15)
                            Text("3,5K").font(.system(size: 12)).padding(.leading, -5)
                        }.foregroundColor(.white)
                    }.frame(width: 60, height: 25).position(x:45, y: 120)
                    HStack{
                        Text("2,5K").font(.system(size: 13)).foregroundColor(.black)
                        Image(systemName: "hand.thumbsup.circle.fill").resizable().scaledToFit().frame(width: 20).foregroundColor(.black)
                    }.position(x:307, y:120)
                }.frame(width: 350, height: 140).padding(.top, 10)
                Spacer()
                HStack{
                    Rectangle().foregroundColor(.black)
                }.position(x:196.5, y: 10).frame(height: 2).padding(.bottom, 2)
                ScrollView{
                    ForEach(value, id: \.self){value in
                        VStack{
                            HStack{
                                Image(systemName: "person.circle").foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                                Text("Username").font(.system(size: 9)).foregroundColor(colorScheme == .dark ? Color.white : Color.black).fontWeight(.bold).foregroundColor(.black)
                                Image(systemName: "circle.circle.fill").resizable().aspectRatio(contentMode: .fit).padding(.leading, -5.0).frame(width: 7, height: 7).foregroundColor(.green)
                                Text("5h ago").font(.system(size: 9)).foregroundColor(colorScheme == .dark ? Color.white : Color.black).padding(.leading, -5).foregroundColor(.black)
                            }.position(x:100, y:12)
                            ZStack{
                                RoundedRectangle(cornerRadius: 30).frame(width: 350, height: 80).foregroundColor(Color(hue: 0.564, saturation: 0.62, brightness: 1.0))
                                Text("Saya setuju drama Descendants of the Sun wajib untuk ditonton, 90% tidak akan menyesal karena plot nya yang tidak terduga.").font(.caption).multilineTextAlignment(.leading).frame(width: 300).position(x:190, y:30).foregroundColor(.black)
                                HStack{
                                    Text("2,5K").font(.system(size: 10)).foregroundColor(.black)
                                    Image(systemName: "hand.thumbsup.circle").resizable().scaledToFit().frame(width: 15).foregroundColor(.black)
                                }.position(x:327, y:62)
                            }
                        }.padding(.vertical, 2)
                    }
                }
                ZStack{
                    Rectangle().position(x:196.5, y: 90).frame(width: 400, height: 100).padding(.top, -78).foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.956))
                    HStack{
                        TextField("", text: $comment).foregroundColor(.black).multilineTextAlignment(.leading)
                            .placeholder(when: comment.isEmpty){
                                Text("Enter your Comment").foregroundColor(.gray)
                        }.padding([.top, .leading, .bottom], 10).lineLimit(3,reservesSpace: false).disableAutocorrection(true).overlay(RoundedRectangle(cornerRadius: 7).stroke(Color.black, lineWidth: 1)).padding(.horizontal, 30.0).padding(.top, 10)
                        Button{
                            comment = ""
                        } label:{
                            Image(systemName: "paperplane.fill").resizable().scaledToFit().frame(width: 25).padding(.leading, -20).padding(.trailing, 40).padding(.top, 10)
                        }
                    }.offset(x:0, y:-10).padding(.top, 5).padding(.bottom, 25)
                }.padding(.bottom, -20)
            }
        }.toolbar(showNavigationBar ? .visible : .hidden, for: .tabBar)
            .onTapGesture {
                withAnimation {
                    showNavigationBar.toggle()
                }
            }
    }
}

struct Discussion_Detail_Previews: PreviewProvider {
    static var previews: some View {
        Discussion_Detail()
        
        Discussion_Detail().environment(\.colorScheme, .dark)
    }
}
