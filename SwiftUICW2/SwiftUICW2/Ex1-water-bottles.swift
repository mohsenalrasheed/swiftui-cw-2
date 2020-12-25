//
//  ContentView.swift
//  SwiftUICW2
//
//  Created by Omar Alibrahim on 12/19/20.
//  Copyright: Kuwait Codes 2020 code.kw
import SwiftUI

struct Exercise1: View {
    @State var name = ""
    @State var water = 1
    var body: some View {
        ZStack {
            Image("charter")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("عهدة الماء 🚰")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
//                ADD THE CODE HERE
                
                Text("اسمك \(name)")
                TextField("ضع اسمك هنا", text: $name)
                Stepper("عدد العلب التي تتعهد هي: \(water)  بشربها", value: $water, in: 1...10)
                
                Text("أتعهد أنا المدعو \(name) بشرب عدد \(water) من علب الماء يومياً")
                
                Spacer()        
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Exercise1()
    }
}
