//
//  ChatView.swift
//  Gemini
//
//  Created by Heical Chandra on 11/05/24.
//

import SwiftUI
import GoogleGenerativeAI

struct ChatView: View {
  @State private var prompt = ""
  @State private var response = ""
//    let model = GenerativeModel(name: "gemini-pro-vision", apiKey: APIKey.default)
    let model = GenerativeModel(name: "gemini-pro", apiKey: APIKey.default)

  var body: some View {
    VStack {
      TextField("Enter your prompt", text: $prompt)
      Button("Generate Response") {
        Task {
          // Generate text from the prompt
          do {
            let response = try! await model.generateContent(prompt)
            self.response = response.text ?? ""
          } catch {
            print(error.localizedDescription)
          }
        }
      }
      Text(response)
    }
  }
}

#Preview {
    ChatView()
}
