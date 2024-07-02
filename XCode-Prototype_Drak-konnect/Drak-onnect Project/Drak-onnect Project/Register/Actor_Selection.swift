//
//  Actor_Selection.swift
//  Drak-onnect Project
//
//  Created by Bryant Anthony Thauwrisan on 03/04/23.
//

import SwiftUI

struct Actor_Selection: View {
    private var listOfActor = actorList
    @State var searchText = ""
    @State private var Search: String = ""
    @State var selections: [String] = []
    
    var body: some View {
            ZStack{
                VStack{
                    List{
                        ForEach(actor, id: \.self) { actor in MultipleSelectionRow2(title: actor, isSelected: self.selections.contains(actor)) {
                            if self.selections.contains(actor) {
                                self.selections.removeAll(where: { $0 == actor })
                            }
                            else {
                                self.selections.append(actor)
                            }
                        }}
                    }.searchable(text: $searchText)
                }
            }.navigationTitle("Select Actor/Actress").toolbar {
                NavigationLink(destination : Tab_Bar()){
                    Text("Submit")
                }
            }
        
    }
    var actor: [String]{
        let lcActor = listOfActor.map{ $0.capitalized}
        return searchText == "" ? lcActor : lcActor.filter{
            $0.contains(searchText.capitalized)
        }
    }
}

struct MultipleSelectionRow2: View {
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

struct Actor_Selection_Previews: PreviewProvider {
    static var previews: some View {
        Actor_Selection()
        
        Actor_Selection().environment(\.colorScheme, .dark)
    }
}
