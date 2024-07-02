//
//  Genre_Selection.swift
//  Drak-onnect Project
//
//  Created by Bryant Anthony Thauwrisan on 03/04/23.
//

import SwiftUI
import UIKit



struct Genre_Selection: View {
    
    private var listOfGenre = genreList
    @State var searchText = ""
    @State private var Search: String = ""
    @State var selections: [String] = []
    @State private var scrollViewID = UUID()
    
    var body: some View {
        
        ZStack{
            VStack{
                List{
                    ForEach(genres, id: \.self) { genre in MultipleSelectionRow(title: genre, isSelected: self.selections.contains(genre)) {
                        if self.selections.contains(genre) {
                            self.selections.removeAll(where: { $0 == genre })
                        }
                        else {
                            self.selections.append(genre)
                        }
                    }}
                }.searchable(text: $searchText).navigationTitle("Select Genres").navigationBarTitleDisplayMode(.large).toolbar {
                    NavigationLink(destination : Actor_Selection()){
                        Text("Next").navigationBarBackButtonHidden(true)
                    }
                }
            }
        }
    }
    var genres: [String]{
        let lcGenres = listOfGenre.map{ $0.capitalized}
        return searchText == "" ? lcGenres : lcGenres.filter{
            $0.contains(searchText.capitalized)
        }
    }
}

struct MultipleSelectionRow: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Button(action: self.action) {
            HStack {
                Text(self.title).foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                if self.isSelected {
                    Spacer()
                    Image(systemName: "checkmark")
                }
            }
        }
    }
}

struct Genre_Selection_Previews: PreviewProvider {
    static var previews: some View {
        Genre_Selection()
        
        Genre_Selection()
            .environment(\.colorScheme, .dark)
    }
}
