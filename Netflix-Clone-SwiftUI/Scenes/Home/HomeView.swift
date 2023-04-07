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
                
//                CategoryView(title: "Trending", category: .trending, vm: CategoryViewModel(category: .trending))
//
//                CategoryView(title: "Netflix Originals", category: .originals, vm: CategoryViewModel(category: .originals))
//
//                CategoryView(title: "Top Rated", category: .topRated, vm: CategoryViewModel(category: .topRated))
//
//                CategoryView(title: "Action", category: .action, vm: CategoryViewModel(category: .action))
//
//                CategoryView(title: "Comedy", category: .comedy, vm: CategoryViewModel(category: .comedy))
//
//                CategoryView(title: "Horror", category: .horror, vm: CategoryViewModel(category: .horror))
//
//                CategoryView(title: "Romance", category: .romance, vm: CategoryViewModel(category: .romance))
//
//                CategoryView(title: "Documentaries", category: .documentary, vm: CategoryViewModel(category: .documentary))

            }
        }
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
    
    @ViewBuilder
    var featured: some View {
        ZStack {
            Image("better_call_saul")
                .resizable()
                .scaledToFill()
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
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
        .shadow(color: Color.secondary, radius: 10)
    }
    
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
