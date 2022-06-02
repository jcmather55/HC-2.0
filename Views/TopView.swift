//
//  TopView.swift
//  SwipeableViews
//
//  Created by Federico on 03/12/2021.
//

import SwiftUI

struct TopView: View {
    private let colors: [Color] = [.red, .blue, .green, .orange, .black]
    
    var body: some View {
        VStack {
            HStack() {
                Text("My Family's Health")
                    .font(.system(size: 30, weight:
                            .bold, design: .rounded))
                    .padding()
                    .frame(width: 320, height: 30, alignment: .leading)
                    .minimumScaleFactor(1.0)
    
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "line.3.horizontal")
                        .padding()
                        .imageScale(.large)

                        .frame(width: 60, height: 60, alignment: .center)                   .minimumScaleFactor(1.0)
                }
            }
            .padding(.top)
            TabView {
                ForEach(colors, id: \.self) { color in
                    ZStack {
                        color
                        Text("\(color.description)")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            .cornerRadius(30)
            .padding(10)
            
            Text("HC 2.0 - 2022_06_02")
                .italic()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
    
}
