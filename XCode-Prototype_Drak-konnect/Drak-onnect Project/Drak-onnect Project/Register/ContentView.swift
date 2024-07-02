//
//  ContentView.swift
//  Drak-onnect Project
//
//  Created by Bryant Anthony Thauwrisan on 03/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var isActive: Bool = false
    @State private var drawingWidth = false
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack{
                if self.isActive {
                    Register()
                }else{
                    Image("Logo_Drak-onnect").resizable().frame(width: 250.0, height: 250.0).scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .imageScale(.medium)
                        .foregroundColor(.accentColor)
                        .padding()
                    ZStack(alignment: .leading) { //progress bar
                        RoundedRectangle(cornerRadius: 3)
                            .fill(Color(.systemGray6))
                        RoundedRectangle(cornerRadius: 3)
                            .fill(.blue.gradient)
                            .frame(width: drawingWidth ? 250 : 0, alignment: .leading)
                            .animation(.easeInOut(duration: 2.5), value: drawingWidth)
                    }.position(x:120,y:150)
                    .frame(width: 250, height: 12)
                    .onAppear {
                        drawingWidth.toggle()
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
