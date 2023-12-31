//
//  EditUser.swift
//  SwiftDataExample
//
//  Created by Ravikanth Thummala on 8/2/23.
//

import SwiftUI

struct EditUser: View {
    
    @Environment(\.modelContext) private var modelContext
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var user: User
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("First Name", text: $user.firstName)
                .textFieldStyle(.roundedBorder)
            TextField("Last Name", text: $user.lastName)
                .textFieldStyle(.roundedBorder)
            TextField("Company Name", text: $user.company.companyName)
                .textFieldStyle(.roundedBorder)
            TextField("Designation", text: $user.company.designation)
                .textFieldStyle(.roundedBorder)
            Spacer()
        }
        .padding(20)
        .navigationTitle("Edit User")
        .toolbar {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Update")
            })
        }
    }
}
