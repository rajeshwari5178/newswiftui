//
//  ContentView.swift
//  SWIFTUI1
//
//  Created by Rajeshwari Sharma on 23/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String=""
    @State private var surname: String=""
   
    @State private var showDetails = false
    @State private var phone: String=""
    @State private var dob: String=""
    var body: some View {
        Form {
            Section{
                
                Text("Registration").bold().font(.title2)
                Text("Fill this form Carefully")
                
                
                
               
            }
           
            Group{
                VStack(alignment: .leading) {
                    
                    Text("Enter your name :")
                    TextField("" , text: $name).fontWidth(.standard)
                }
                VStack(alignment: .leading) {
                    Text("Enter your surname :")
                    TextField("" , text: $surname)
                   
                }
                VStack(alignment: .leading) {
                    Text("Enter your phone number : ")
                    TextField("" , text: $phone)
                    
                   
                }
                VStack(alignment: .leading) {
                    Text("Enter your date of birth :")
                    TextField("" , text: $dob)
                 
                }            }
            
           
               
            Button(action:{
                print("hello")
                self.showDetails.toggle()
            }) {
                    HStack {
                        
                        Image(systemName: "trash")
                            .font(.title)
                        Text("Delete")
                            .fontWeight(.semibold)
                            .font(.title)
                    }.frame(minWidth: 0, maxWidth: .infinity)
                    .padding(10)
                    .foregroundColor(.white).background(LinearGradient(gradient: Gradient(colors: [Color.pink, Color.purple]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40).shadow(color: .purple, radius: 20.0, x: 20, y: 10)
            }.sheet(isPresented: $showDetails) {
                SeconView()
                }
               
           
           
        }
        .padding()
       
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
