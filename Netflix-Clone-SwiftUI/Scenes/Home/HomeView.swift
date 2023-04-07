//
//  HomeView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/6/23.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        VStack {
            // For <user>, cast and search buttons, user photo
            HomeTopView()
            
            ScrollView(showsIndicators: false) {
                
                VStack {
                    // TV Shows, Movies, and Categories Buttons
                    topOptions
                    // Featured Show/Movie
                    featured
                }
                
                ForEach(Category.allCases) { category in
                    CategoryView(title: category.title, category: category, vm: CategoryViewModel(category: category))
                }

            }
        }
        .padding(.horizontal, 8)
        .preferredColorScheme(.dark)
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}

extension HomeView {
    
    // Large "featured" show/movie at the top
    @ViewBuilder
    var featured: some View {
        ZStack {
            // featured item image
            Image("better_call_saul")
                .resizable()
                .scaledToFill()
                .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            
            // genres and buttons
            VStack {
                
                Spacer()
                
                HStack(spacing: 2) {
                    Text("Offbeat")
                    Text("•")
                        .foregroundColor(Color(.systemOrange))
                    Text("Violent")
                    Text("•")
                        .foregroundColor(Color(.systemOrange))
                    Text("Horror Comedy")
                    Text("•")
                        .foregroundColor(Color(.systemOrange))
                    Text("Ensemble")
                }
                .font(.caption).bold()
                
                HStack {
                    
                    Button {
                        // play button
                    } label: {
                        Image(systemName: "play.fill")
                        Text("Play")
                    }
                    .padding(.horizontal, 24)
                    .padding(.vertical, 4)
                    .foregroundColor(.black)
                    .background(.white, in: RoundedRectangle(cornerRadius: 4))
                    
                    Button {
                        // add to list
                    } label: {
                        Image(systemName: "plus")
                        Text("My List")
                    }
                    .padding(.horizontal, 24)
                    .padding(.vertical, 4)
                    .foregroundColor(.white)
                    .background(Color(.darkGray), in: RoundedRectangle(cornerRadius: 4))
                    
                }
                
            }
            .padding(.bottom)
        }
        .frame(width: 330)
        .padding(.bottom, 40)
        .shadow(color: Color.secondary, radius: 4)
    }
    
    // "TV Shows", "Movies", and "Categories" buttons under top bar
    @ViewBuilder
    var topOptions: some View {
        
        HStack {
            
            Button {
                //
            } label: {
                Text("TV Shows")
                    .font(.system(size: 12))
            }
            .padding()
            .foregroundColor(.white)
            .overlay(
                    Capsule()
                        .stroke(.secondary, lineWidth: 1)
                )
            
            Button {
                //
            } label: {
                Text("Movies")
                    .font(.system(size: 12))
            }
            .padding()
            .foregroundColor(.white)
            .overlay(
                    Capsule()
                        .stroke(.secondary, lineWidth: 1)
                )
            
            Button {
                //
            } label: {
                Text("Categories")
                    .font(.system(size: 12))
            }
            .padding()
            .foregroundColor(.white)
            .overlay(
                    Capsule()
                        .stroke(.secondary, lineWidth: 1)
                )

        }
        .padding()
    }
}
