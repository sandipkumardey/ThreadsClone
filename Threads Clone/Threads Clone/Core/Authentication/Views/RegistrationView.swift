//
//  RegistrationView.swift
//  Threads Clone
//
//  Created by Sandip Kumar Dey on 19/12/23.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel = RegistrationViewModel()

    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        VStack{
            Spacer()
            
            Image("threads2")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack{
                TextField("Enter your email",text: $viewModel.email)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("Enter your password",text: $viewModel.password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your full name",text: $viewModel.fullname)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your username",text: $viewModel.username)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .modifier(ThreadsTextFieldModifier())
            }
            
            
            Button{
                Task{ try await viewModel.createUser()}
                
                                    
            } label:{
                Text("Sign up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(8)
            
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button{
                dismiss()
            } label: {
                HStack(spacing: 3){
                    Text("Already have an account?")
                    
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.black)
                .font(.footnote)
            

            }
            .padding(.vertical, 16)
            
            
        }
    }
}

#Preview {
    RegistrationView()
}
