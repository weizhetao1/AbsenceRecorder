//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Tao, Weizhe (Coll) on 01/02/2022.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division] = []
    
    init() {
        loadFromFile()
    }
    
    func createUrl(name: String) -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        let url = userPath.appendingPathComponent(name)
        return url
    }
    
    func loadFromFile() {
        //get url to the file you want to load from
        let url = createUrl(name: "divisions.json")
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode([Division].self, from: data) {
                divisions = loaded
            }
        }
    }
    
    func saveToFile() {
        //create json encoder
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(divisions) {
            //take encoded json objects and convert them into string
            if let json = String(data: encoded, encoding: .utf8) {
                //create the file path
                let url = createUrl(name: "divisions.json")
                do {
                    //write the json string to that file
                    try json.write(to: url, atomically: true, encoding: .utf8)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
}
