//
//  ContentView.swift
//  EnvironmentObjectDemo
//
//  Created by Raghav Deo on 14/07/23.
//

import SwiftUI
class GameSettings : ObservableObject
{
    @Published var score = 0
}
struct scoreView : View
{
    @EnvironmentObject var setting:GameSettings
    var body: some View
    {
        VStack
        {
            Text("\(setting.score)")
            Button("Increase Score") {
                setting.score+=1
            }
        }
    }
}
struct ContentView: View {
    @EnvironmentObject var setting:GameSettings
    var body: some View {
        NavigationStack
        {
            VStack {
              
                NavigationLink {
                    scoreView()
                } label: {
                    VStack
                    {
                        Text("Current score:\(setting.score)").padding()
                        Text("Show detail View")
                    }
                }

            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(GameSettings())
    }
}
