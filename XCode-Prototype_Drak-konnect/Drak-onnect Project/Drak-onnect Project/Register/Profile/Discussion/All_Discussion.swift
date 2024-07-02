//
//  All_Discussion.swift
//  Drak-onnect Project
//
//  Created by Bryant Anthony Thauwrisan on 07/04/23.
//

import SwiftUI

struct All_Discussion: View {
    @State var GenreModal = false
    @Environment(\.colorScheme) var colorScheme
    var value = ["1","2","3","4","5","6","7","8","9","10"]
    var body: some View {
        
        ScrollView{
            ForEach(value, id: \.self){value in
                VStack{
                    ZStack{
                        Button{
                            GenreModal = true
                        } label: {
                            HStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20).foregroundColor(Color(hue: 0.564, saturation: 0.289, brightness: 0.982)).frame(width: 350)
                                    Text("Bagi kamu yang suka nonton drama Korea dan belum pernah menonton Descendants of the Sun, saya sarankan untuk nonton drama ini. Meskipun terlihat klise di awal, namun ceritanya menarik, akting dan lokasinya yang indah bisa membuat kamu terkesan dengan drama ini.").foregroundColor(.black).font(.body).multilineTextAlignment(.leading).lineLimit(3).padding().frame(width: 320).position(x:160, y:40)
                                    Image(systemName: "arrow.right.circle.fill").foregroundColor(.black).position(x:325, y:61)
                                    HStack{
                                        Image(systemName: "person.circle").foregroundColor(.black)
                                        Text("Username").font(.system(size: 9)).fontWeight(.bold).foregroundColor(.black)
                                        Image(systemName: "circle.circle.fill").resizable().aspectRatio(contentMode: .fit).padding(.leading, -5.0).frame(width: 7, height: 7).foregroundColor(.green)
                                        Text("5h ago").font(.system(size: 9)).padding(.leading, -5).foregroundColor(.black)
                                    }.position(x:80, y: 83)
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 20).foregroundColor(.blue)
                                        HStack{
                                            Image(systemName: "bubble.left.fill").resizable().scaledToFit().frame(width: 15, height: 15)
                                            Text("3,5K").font(.system(size: 12)).padding(.leading, -5)
                                        }.foregroundColor(.white)
                                    }.frame(width: 60, height: 25).position(x:45, y: 110)
                                }}.sheet(isPresented: $GenreModal, content: {
                                    Discussion_Detail()               })
                        }.frame(width: 350, height: 130)
                        HStack{
                            Text("2,5K").font(.system(size: 13)).foregroundColor(.black)
                            Image(systemName: "hand.thumbsup.circle").resizable().scaledToFit().foregroundColor(Color.black).frame(width: 20)
                        }.position(x:327, y:110)
                    }
                }
            }
        }.padding(.top, 50)
    }
}

struct All_Discussion_Previews: PreviewProvider {
    static var previews: some View {
        All_Discussion()
    }
}
