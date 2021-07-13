//
//  ContentView.swift
//  UITrace2021年7月13日
//
//  Created by 吉田周平 on 2021/07/13.
//

import SwiftUI

struct ContentView: View {
    @State var showingLoginView = false
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                HStack {
                    Image(systemName: "doc.text.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 48, height: 48)
                    Text("GIPHY")
                        .font(.system(size: 56))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                .padding(.top, 36)
                Text("Your destination for bite-sized, shareble entertainment")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 36)
                Image("sample")
                    .resizable(capInsets: EdgeInsets(top: 100.0, leading: 0.0, bottom: 1.0, trailing: 0.0), resizingMode: .tile)
                    .frame(height: 480)
                Spacer()
                Button(action: {
                    showingLoginView.toggle()
                }, label: {
                    Text("Get Started")
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 96/255,
                                          green: 87/255, 
                                          blue: 246/255))
                        .padding()
                })

            }
        }
        .fullScreenCover(isPresented: $showingLoginView, content: {
            LoginView()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
