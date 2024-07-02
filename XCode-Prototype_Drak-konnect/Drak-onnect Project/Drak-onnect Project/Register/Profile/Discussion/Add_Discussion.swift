//
//  Add_Discussion.swift
//  Drak-onnect Project
//
//  Created by Bryant Anthony Thauwrisan on 07/04/23.
//

import SwiftUI
import UIKit

struct Add_Discussion: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.colorScheme) var colorScheme
    @State private var discussion: String = ""
    @State var message: String = ""
    @State private var AlertCancel = false
    
    var body: some View {
        NavigationView{
            ScrollView{
                HStack{
                    HStack(spacing: 8) {
                        withAnimation(.easeInOut) {
                            TextField("", text: $message, axis: .vertical)
                                .placeholder(when: message.isEmpty) {
                                    Text("Add your topics...")
                                        .foregroundColor(.secondary)
                                }
                            // Add maximum vertical visible line limit
                                .lineLimit(3, reservesSpace: true).navigationBarItems(trailing: Button("Cancel", action: {
                                    if message == "" {
                                        dismiss()
                                    } else {
                                        AlertCancel = true
                                    }
                                }))
                        }
                    }.frame(width: 280)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(Color(.systemGray6))
                    
                    if message != "" {
                        Button {
                            // send something
                        } label: {
                            Image(systemName: "arrow.up.circle.fill")
                                .font(.largeTitle)
                        }
                    } else {
                        Button {
                            // make something
                        } label: {
                            Image(systemName: "photo.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(Color(.systemGray))
                        }
                    }
                }
            }
        }.alert(isPresented: $AlertCancel) {
            Alert(
                title: Text("Stop Editing ?"),
                message: Text("Your topic won't be saved"),
                primaryButton: .destructive(Text("Stop Editing"), action: {
                    dismiss()
                }),
                secondaryButton: .cancel(Text("Keep Editing"))
            )
        }
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}

struct Add_Discussion_Previews: PreviewProvider {
    @Environment(\.colorScheme) var colorScheme
    static var previews: some View {
        Add_Discussion()
        
        Add_Discussion().environment(\.colorScheme, .dark)
    }
}
