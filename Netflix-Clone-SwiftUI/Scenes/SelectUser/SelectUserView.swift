//
//  SelectUserView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import SwiftUI

struct SelectUserView: View {
    
    @Binding var userSelected: Bool
    
    // columns for LazyVGrid
    let colums = Array(repeating: GridItem(.flexible()), count: 2)
    // dummy usernames
    let users = ["Boss", "Squirt", "Chicken", "Boring"]
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            Text("Who's Watching?")
                .font(.title2).bold()
            
            Spacer()
            
            LazyVGrid(columns: colums, spacing: 50) {
                ForEach(1..<5, id: \.self) { num in
                    
                    Button {
                        userSelected = true
                    } label: {
                        VStack {
                            Image("profile\(num)")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 125)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 8)
                                )
                            
                            Text(users[num-1])
                        }
                    }

                    
                }
            }
            .padding(.horizontal, 40)
            
            Button {
                //
            } label: {
                VStack {
                    
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 125, height: 125)
                        .background(Color(.darkGray), in: RoundedRectangle(cornerRadius: 8))
                        .padding(-2)
                        .overlay {
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(.black)
                            Image(systemName: "plus")
                        }
                    
                    Text("Add Profile")
                }
                
            }
            .padding(.top, 50)

            Spacer()
            
        }
    }
}

//struct SelectUserView_Previews: PreviewProvider {
//
//    var previewBind = false
//
//    static var previews: some View {
//        SelectUserView()
//            .preferredColorScheme(.dark)
//    }
//}
