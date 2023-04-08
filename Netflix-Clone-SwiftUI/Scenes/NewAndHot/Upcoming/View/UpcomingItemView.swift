//
//  UpcomingItemView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import SwiftUI

struct UpcomingItemView: View {
    
    let item: Item
    
    private var releaseDateArray: [String] {
        if let releaseDate = item.releaseDate {
            return releaseDate.components(separatedBy: "-")
        } else {
            return ["2023", "04", "05"]
        }
        
    }
    
    private var month: String {
        let val = releaseDateArray[1]
        
        if val == "01" { return "JAN" }
        else if val == "02" { return "FEB" }
        else if val == "03" { return "MAR" }
        else if val == "04" { return "APR" }
        else if val == "05" { return "MAY" }
        else if val == "06" { return "JUN" }
        else if val == "07" { return "JUL" }
        else if val == "08" { return "AUG" }
        else if val == "09" { return "SEP" }
        else if val == "10" { return "OCT" }
        else if val == "11" { return "NOV" }
        else if val == "12" { return "DEC" }
        else { return "ERR" }
        
    }
    
    private var day: String {
        let val = releaseDateArray[2]
        
        if val.first == "0" {
            return String("\(val[val.index(val.startIndex, offsetBy: 1)])")
        } else {
            return val
        }
        
    }
    
    var body: some View {
        
        HStack(alignment: .top, spacing: 16) {
            
            VStack {
                Text(month)
                    .bold()
                    .foregroundColor(.secondary)
                
                Text(day)
                    .font(.system(size: 28).bold())
                
                Spacer()
            }
            
            VStack(alignment: .leading, spacing: 16) {
                
                if let path = item.backdropPath, let url = URL(string: "https://image.tmdb.org/t/p/w500\(path)") {
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                    } placeholder: {
                        ProgressView()
                    }
                }
                
                HStack(alignment: .bottom) {
                    
                    VStack {
                        if let title = item.originalTitle {
                            Text(title)
                        } else {
                            Text(item.originalName ?? "")
                        }
                        
                    }
                    .fontWeight(.bold)
                    .padding(.leading, 0)
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        VStack(spacing: 5) {
                            Image(systemName: "bell")
                                .font(.system(size: 20).bold())
                            
                            Text("Remind Me")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        VStack(spacing: 5) {
                            Image(systemName: "info.circle")
                                .font(.system(size: 22).bold())
                            
                            Text("Info")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }

                }
                .padding(.trailing)
                
                HStack {
                    Text("Coming Wednesday")
                    
                    Spacer()
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    if let title = item.originalTitle {
                        Text(title)
                            .font(.title3).bold()
                    } else {
                        Text(item.originalName ?? "")
                            .font(.title3).bold()
                    }
                        
                    
                    Text(item.overview)
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                    Text("Riveting • Investigative • True Crime • Investigation")
                        .font(.caption)
                }
                
            }
        }
        .padding()
    }
}

struct UpcomingItemView_Previews: PreviewProvider {
    
    private static var previewItem: Item {
        let result = try! StaticJSONMapper.decode(file: "Upcoming", type: ItemsList.self)
        return result.results[0]
    }
    
    static var previews: some View {
        UpcomingItemView(item: previewItem)
            .preferredColorScheme(.dark)
    }
}
