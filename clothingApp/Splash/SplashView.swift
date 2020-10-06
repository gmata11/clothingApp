//
//  SplashView.swift
//  clothingApp
//
//  Created by Gerard Mata Carrera on 06/10/2020.
//

import SwiftUI

struct SplashView: View {
    
    @State var animation = true
    @State var isActive = false
    
    var body: some View {
        ZStack() {
            if self.isActive {
                Home()
            }else {
                Color.white.edgesIgnoringSafeArea(.all)
                ZStack {
                    Image("GMC")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .shadow(color: Color.gray, radius: 10)
                        .scaleEffect(animation ? 4.0 : 1.0)
                        .animation(Animation.easeInOut(duration: 1.0))
                        .onAppear { self.animation.toggle() }
                    
                }
                ZStack {
                    Text("Created by GMATA")
                        .frame(width: 150, height: 500, alignment: .bottomLeading)
                        .foregroundColor(.black)
                }
            }
            
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}
