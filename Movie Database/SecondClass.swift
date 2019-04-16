//
//  SecondClass.swift
//  Movie Database
//
//  Created by Muqadus on 15/4/19.
//  Copyright © 2019 Muqadus. All rights reserved.
//

import UIKit

//struct Countries: Decodable { // This is the structure for Countries link that works
//    let name: String
//}

struct Movies: Decodable {
    let Title: String
    let Website: String
}


class SecondClass: UIViewController {

    @IBOutlet weak var TextViewText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //let url: String = "https://restcountries.eu/rest/v2/all" //This link works
        let url: String = "https://www.omdbapi.com/?i=tt3896198&apikey=e6e87205" // This one doesn't work
        let UrlObject = URL(string: url)
        URLSession.shared.dataTask(with: UrlObject!) {(data, response, error) in
            do {
                //let countries = try JSONDecoder().decode([Countries].self, from: data!) This works
                let movies = try JSONDecoder().decode([Movies].self, from: data!) // This doesn't return anthing
                for i in movies{
                    print("Title:\n\(i.Title)\nWebsite:\n\(i.Website)")
                }
            } catch{
                print(error)
            }
        }.resume()
    }
}
