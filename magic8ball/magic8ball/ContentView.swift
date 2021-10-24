//
//  ContentView.swift
//  magic8ball
//
//  Created by Islambek on 20.10.2021.
//

import SwiftUI

struct ContentView: View {
    @State var ballIndex = 3
    var body: some View {
        
            
            
            
        ZStack {
            
            Color.cyan
            
            VStack {
                Text("Ask Me Anything")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.top, 40)
                    .background(Rectangle().frame(width: getScreenBounds().width,height: 100).foregroundColor(.blue))
                    .edgesIgnoringSafeArea(.top)
                
                Spacer()
                
                Button {
                        ballIndex = Int.random(in: 1...5)
                    } label: {
                        Image("ball\(ballIndex)")
                            .resizable()
                            .aspectRatio( contentMode: .fit)
                            .padding(.all, 5)
                }
                
                Spacer()
            }
        }
           

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
extension View {
    func getScreenBounds()->CGRect{
        
        return UIScreen.main.bounds
    }
}
