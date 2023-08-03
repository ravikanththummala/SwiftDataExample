//
//  ContentView.swift
//  SwiftDataExample
//
//  Created by Ravikanth Thummala on 8/2/23.
//

import SwiftUI
import SwiftData

struct UserList: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var users: [User]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(users) { user in
                    NavigationLink {
                        EditUser(user: user)
                    } label: {
                        VStack(alignment: .leading,spacing: 5) {
                            Text("\(user.firstName) \(user.lastName)")
                                .fontWeight(.bold)
                                .font(.headline)
                            Text("Company: \(user.company.companyName)")
                                .fontWeight(.regular)
                                .font(.caption)
                            
                            Text("Designation: \(user.company.designation)")
                                .fontWeight(.regular)
                                .font(.caption2)
                            
                        }.padding(10)
                    }
                    .swipeActions{
                        Button("Delete") {
                            modelContext.delete(user)
                        }
                    }

                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                NavigationLink {
                    CreateUser()
                } label: {
                    Text("+")
                        .fontWeight(.bold)
                        .font(.title)
                }
            }
        } detail: {
            Text("Select an item")
        }
    }

   

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(users[index])
            }
        }
    }
}

#Preview {
    UserList()
        .modelContainer(for: User.self, inMemory: true)
}
