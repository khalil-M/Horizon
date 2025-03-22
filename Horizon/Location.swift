//
//  Location.swift
//  Horizon
//
//  Created by User on 07/03/2025.
//

import SwiftUI
@MainActor
struct LocationTextField {
    @Binding private var text: String
    private let placeholder: LocalizedStringKey
    private let iconName: String
    private let iconColor: Color
    private let tapAction: () -> Void
    private let onChange: (String, String) -> Void
}

extension LocationTextField: View {
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
            
            TextField(placeholder, text: $text)
                .textFieldStyle(.plain)
                .onChange(of: text, onChange)
            
        }
        
        }
    
    private var backgroundView: some View {
        RoundedRectangle(cornerRadius: 8)
            .stroke(Color.gray, lineWidth: 1)
    }
}

struct Location: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Location()
}

protocol HTTPClient {
    func execute(request: URLRequest) async throws-> (Data, HTTPURLResponse)
}
protocol NamesLoader {
    func load() async throws -> [String]
}

final class RemoteNamesLoader: NamesLoader {
    
    let client : HTTPClient
    let url: URL
    
    enum Error: Swift.Error {
        case invalidResponse
        case tokenExpired
    }
    
    init(client: HTTPClient, url: URL) {
        self.client = client
        self.url = url
    }
    
    func load() async throws -> [String] {
        let (data, response) = try await client.execute(request: URLRequest(url: url))
        if response.statusCode == 401 {
            throw Error.tokenExpired
        } else {
            return try map(data, response: response)
        }
    }
    
    private func map(_ data: Data, response: HTTPURLResponse) throws -> [String] {
        if response.statusCode == 200 {
            return ["AnyResponse"]
        } else {
            throw Error.invalidResponse
        }
    }
    
}
