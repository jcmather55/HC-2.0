//
//  TopView.swift
//  SwipeableViews
//
//  Created by Federico on 03/12/2021.
//

import SwiftUI

struct RootView: View {
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
            
            let appVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "-"
            
            let appName = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as? String ?? "--"
        
            HStack (){
                
                Text("App:  \(appName)")
                    .font(.caption2)
                    .fontWeight(.light)
                    .foregroundColor(Color.red)
                    .italic()
                
                Text("Version:    \(appVersion)")
                    .font(.caption2)
                    .fontWeight(.light)
                    .foregroundColor(Color.red)
                    .italic()
            }
            
            
            TabView {
                ForEach(colors, id: \.self) { color in
                    
  // The Summary Family Card
                    
                    ZStack {
                        color
                         Text("\(color.description)")
                             .font(.title)
                             .foregroundColor(.white)
                             .padding()
                        // Card placeholder Text (in this case, App & Version, etc)
                                
                                ScrollView {
                                    GroupBox {
                                        VStack(alignment: .leading) {
                                            Text("Messages")
                                                .font(.headline)
                                                .foregroundColor(Color.black)
                                            Text("                                                     ")
                                            GroupBox {
                                                Text("Alerts                      ")
                                            }
                                            
                                        }
                                        .foregroundColor(Color.red)
                                        
                                    }
                                    GroupBox {
                                        VStack(alignment: .leading) {
                                            Text("Vital Signs")
                                                .font(.headline)
                                            Text("                                                     ")
                                            GroupBox {
                                                Text("                            ")
                                            }
                                            
                                        }
                                        
                                        .foregroundColor(Color.black)
                                        
                                    }
                                    GroupBox {
                                        VStack(alignment: .leading) {
                                            Text("Medications")
                                                .font(.headline)
                                            Text("                                                     ")
                                            GroupBox {
                                                Text("                            ")
                                            }
                                            
                                        }
                                        
                                        .foregroundColor(Color.black)
                                        
                                    }
                                    GroupBox {
                                        VStack(alignment: .leading) {
                                            Text("Test Results")
                                                .font(.headline)
                                            Text("                                                     ")
                                            GroupBox {
                                                Text("                            ")
                                            }
                                            
                                        }
                                        
                                        .foregroundColor(Color.black)
                                        
                                    }
                                    
                                    GroupBox {
                                        VStack(alignment: .leading) {
                                            Text("Discussion Topics")
                                                .font(.headline)
                                            Text("                                                     ")
                                            GroupBox {
                                                Text("                            ")
                                            }
                                            
                                        }
                                        
                                        .foregroundColor(Color.black)
                                        
                                    }
                                    
                                }
  
                    }
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            .cornerRadius(30)
 //           .transition(.)
            .padding(10)
            


            
            Text ("Put more action icons here...")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
            .previewInterfaceOrientation(.portrait)
    }
    
}
