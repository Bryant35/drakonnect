//
//  Rating.swift
//  Drak-onnect Project
//
//  Created by Bryant Anthony Thauwrisan on 06/04/23.
//

import SwiftUI

struct Rating: View {
    @State var rating1 : Int = 0
    @State var rating2 : Int = 0
    @State var rating3 : Int = 0
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.dismiss) var dismiss
    @State private var showingAlert = false
    
    var body: some View {
        NavigationView{
        VStack{
            Text("Do you like this community ?").font(.system(size: 25)).fontWeight(.heavy).foregroundColor(colorScheme == .dark ? Color.white : Color.black).multilineTextAlignment(.center)
            Text("Share your expirience with other by rating this community").font(.system(size: 20)).fontWeight(.ultraLight).foregroundColor(colorScheme == .dark ? Color.white : Color.black).multilineTextAlignment(.center).padding(.top,1)
            VStack{
                Text("Topic Suitability")
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                HStack{
                    ForEach(1..<6){index in Image(systemName: "star.fill").font(.largeTitle).foregroundColor(rating1 >= index ? Color.yellow : Color.gray)
                            .onTapGesture {
                                rating1 = index
                            }
                    }
                }
            }.padding(.top, 20)
            VStack{
                Text("Member Activity")
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                HStack{
                    ForEach(1..<6){index in Image(systemName: "star.fill").font(.largeTitle).foregroundColor(rating2 >= index ? Color.yellow : Color.gray)
                            .onTapGesture {
                                rating2 = index
                            }
                    }
                }
            }.padding(.top, 20)
            VStack{
                Text("Member Quality")
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                HStack{
                    ForEach(1..<6){index in Image(systemName: "star.fill").font(.largeTitle).foregroundColor(rating3 >= index ? Color.yellow : Color.gray)
                            .onTapGesture {
                                rating3 = index
                            }
                    }
                }
            }.padding(.top, 20)
        }.navigationBarItems(trailing:
                                Button("Submit", action: {
            if rating1 == 0 || rating2 == 0 || rating3 == 0{
                showingAlert = true
            }
            else {
                dismiss()
            }
        })).navigationBarItems(leading: Button("Cancel", action: {
            dismiss()
        }))
        }.alert("You haven't rate all yet", isPresented: $showingAlert) {
            Button("OK", role: .cancel) { }
        }
    }
}

struct Rating_Previews: PreviewProvider {
    static var previews: some View {
        Rating()
    }
}
