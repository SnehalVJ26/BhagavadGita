//
//  ContentView.swift
//  BhagavadGita
//
//  Created by mnameit on 02/05/23.
//

import SwiftUI
import BGUtility

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewModel()
    var body: some View {
        NavigationView {
            Text("ContentView.bhagavad_gita_chapter \("1")")
        }.onAppear {
            viewModel.onAppear()
        }
    }


}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
