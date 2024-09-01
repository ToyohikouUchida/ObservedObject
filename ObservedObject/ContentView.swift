//
//  ContentView.swift
//  ObservedObject
//
//  Created by 内田豊彦 on 2024/09/01.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    @State var weight = ""
    @State var height = ""
    @State var age = ""
    var body: some View {
        VStack {
            Text("あなたのペット情報を入力してください。")
            TextField("名前", text: $name)
            TextField("体重", text: $weight)
            TextField("身長", text: $height)
            TextField("年齢", text: $age)
            Button("決定"){
            }
            .textFieldStyle(.roundedBorder)
            .padding()
        }
    }
}
struct InfoView: View{
    @Binding var name: String
    @Binding var weight: String
    @Binding var height: String
    @Binding var age: String
    var body: some  View {
        Text("あなたのペット情報")
        Text("名前 : \(name)")
        Text("体重 : \(name)")
        Text("身長 : \(height)")
        Text("年齢 : \(age)")

        
    }
}
#Preview {
        ContentView()
}
