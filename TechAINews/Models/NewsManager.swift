//
//  NewsManager.swift
//  TechAINews
//
//  Created by Swapnil Dhiman on 21/07/25.
//

import Foundation
import Combine

class NewsManager: ObservableObject {
    @Published var articles: [Hit] = [] // This holds the news stories
    let urlString = "https://hn.algolia.com/api/v1/search?tags=front_page"

    func fetchNews() {
        /*
         1. Create URL
         2. Create URLSession
         3. Assigning the task
         4. Perform the task
         */
        guard let url = URL(string: urlString) else { return }
        let urlSession = URLSession(configuration: .default)
        let task: Void = urlSession.dataTask(with: url) { data, response, error in
            if let safeData = data {
                //Convert the Data into String
                if let responseString = String(data: safeData, encoding: .utf8) {
                    print(responseString)
                }
                // Parse the JSON data
                if let newsModel = self.parseJson(safeData) {
                    DispatchQueue.main.async {
                        self.articles = newsModel.hits
                    }
                }
            }
        }.resume()
    }

    func parseJson(_ newsData: Data) -> NewsData? {
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(NewsData.self, from: newsData)
            let newsModel = NewsData(hits: decodedData.hits)
            return newsModel
        } catch {
            print("Decoding error: \(error)")
            return nil
        }
    }
}
