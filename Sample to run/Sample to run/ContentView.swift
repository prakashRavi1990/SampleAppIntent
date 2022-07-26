//
//  ContentView.swift
//  Sample to run
//
//  Created by Prakash on 22/07/22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(AppSetting.shared.userName ?? "Init")
        }.onAppear{
            AppSetting.shared.userName = "Test"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
