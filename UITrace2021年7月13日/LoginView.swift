//
//  LoginView.swift
//  UITrace2021年7月13日
//
//  Created by 吉田周平 on 2021/07/13.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    var body: some View {
        ZStack {
            Image("fbg")
                .resizable()
                .blur(radius: 8.0)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                    })
                    .padding()
                }
                Spacer()
                Text("Create an Account")
                    .font(.system(size: 36))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("Create a GIPHY account so you can favorite. create, upload, & collect add the GIFs!")
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 20,
                                        leading: 80,
                                        bottom: 60,
                                        trailing: 80))
                VStack {
                    HStack {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Sign")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color(red: 117/255,
                                                  green: 251/255,
                                                  blue: 162/255))
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Log In")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color(red: 62/255,
                                                  green: 62/255,
                                                  blue: 62/255))
                        })
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .padding()
                        .background(Color.white)
                        .frame(maxWidth: .infinity)
                    TextField("Username", text: $viewModel.user)
                        .padding()
                        .background(Color.white)
                        .frame(maxWidth: .infinity)
                    TextField("Password", text: $viewModel.password)
                        .padding()
                        .background(Color.white)
                        .frame(maxWidth: .infinity)
                    Button(action: {}, label: {
                        Text("Sign Up")
                            .font(.callout)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 96/255,
                                              green: 87/255, 
                                              blue: 246/255))

                    })
                    HStack {
                        Button(action: {
                            viewModel.tappedCheckBox()
                        }, label: {
                            Image(systemName: "checkmark")
                                .foregroundColor(.black)
                                .padding(4)
                                .background(viewModel.checkBoxBackgroundColor)
                        })
                        Text("I have read and agree to the")
                            .foregroundColor(.white)
                            .font(.footnote)
                        Button(action: {}, label: {
                            Text("Terms of Servise")
                                .foregroundColor(.white)
                                .font(.footnote)
                                .fontWeight(.bold)
                        })
                        Spacer()
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack {
                            Image("f_logo")
                                .resizable()
                                .frame(width: 20, height: 20, alignment: .center)
                            Text("Sign in with Facebook")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.black)
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack {
                            Image("f_logo")
                                .resizable()
                                .frame(width: 20, height: 20, alignment: .center)
                            Text("Sign in with Facebook")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.black)
                    })
                    Spacer()
                }
                .padding(.horizontal, 36)
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var user = ""
    @Published var password = ""
    @Published var isChecked = false
    
    var checkBoxBackgroundColor: Color {
        return isChecked
            ? Color(red: 117/255,
                    green: 251/255,
                    blue: 162/255)
            : .white
    }
    
    func tappedCheckBox() {
        isChecked.toggle()
    }
}
