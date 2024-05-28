////
////  ContentView.swift
////  Gemini
////
////  Created by Heical Chandra on 11/05/24.
////
//
//import SwiftUI
//import GoogleGenerativeAI
//
//struct ContentView: View {
//  let model = GenerativeModel(name: "gemini-pro-vision", apiKey: APIKey.default)
//  @State private var data: [String] = [] // Example data for story text
//
//  var body: some View {
//    VStack {
//      Image(systemName: "globe")
//        .imageScale(.large)
//        .foregroundStyle(.tint)
//      Text("Hello, world!")
//    }
//    .padding()
//    .onAppear {
//      // Call your async function here to fetch data
//      Task {
//        data = await getStory()  // Using getStory() for clarity
//      }
//    }
//  }
//
//  private func getStory() async -> [String] {
//    let model = GenerativeModel(name: "gemini-pro", apiKey: APIKey.default)
//    let prompt = "bisa berbahasa indonesia?"
//    let response = try! await model.generateContent(prompt)
//    if let text = response.text {
//      print(text)
//      return [text]
//    } else {
//      return []  // Handle case where no text is returned
//    }
//  }
//}
//
//
////#Preview {
////    ContentView()
////}
