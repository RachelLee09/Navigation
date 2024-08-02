//
//  ContentView.swift
//  Navigation
//
//  Created by Scholar on 7/26/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                List {
                    NavigationLink(destination:
                                    SecondView()){
                        Text("Click me!")}
                    Menu(/*@START_MENU_TOKEN@*/"Menu"/*@END_MENU_TOKEN@*/) {
                        NavigationLink(destination: SecondView()){Text("SecondView")}
                        /*@START_MENU_TOKEN@*/Text("Menu Item 2")/*@END_MENU_TOKEN@*/
                        /*@START_MENU_TOKEN@*/Text("Menu Item 3")/*@END_MENU_TOKEN@*/
                        
                    }
                }
                Text("This is the root view 🌲")
                    .font(.title3)
                NavigationLink(destination:
                    SecondView()){
                    Text("Second View")}
            }
            .toolbar{
                ToolbarItemGroup(placement:.status){
                
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    ContentView()
}
