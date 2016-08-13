//
//  Meal.swift
//  \
//
//  Created by Coder on 7/31/16.
//  Copyright © 2016 Coder. All rights reserved.
//

import UIKit

class Meal: NSObject, NSCoding {
    
    
    
    // MARK: Properties
    
    // MARK: Archiving Paths
    
 
    
    
  static  let documentsDirectory =
        FileManager().urlsForDirectory(.documentDirectory, inDomains:
            .userDomainMask).first!
    
    //old code
    // static let archiveURL = documentsDirectory.appendingPathComponent("meals")
    
    
    do {
    static let archiveURL = try documentsDirectory.appendingPathComponent("meals")
    
    } catch {
    print("Error Recording")
    }
    
 
    
    
    
  
    
    





    
    
    


    

    
    
    
    
    
    // MARK: Types
    
    struct PropertyKey {
        
        static let nameKey = "name"
        static let photoKey = "photo"
        static let ratingKey = "rating"
        
        
        
        }
    

    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: Initialization
    init? (name: String, photo: UIImage?, rating: Int) {
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
        
        super.init()
        
        // Initialization should fail if there is no name or if the rating is negative
        if name.isEmpty || rating < 0 {
            return nil
    }
   
    
    }
    
    //MARK NSCoding
    
    func encode(with aCoder: NSCoder) {
     
    
        
        //this might not work cause its not declaring the type
        
        aCoder.encode(name, forKey: PropertyKey.nameKey)
        aCoder.encode(photo, forKey: PropertyKey.photoKey)
        aCoder.encode(rating, forKey: PropertyKey.ratingKey)
        
    }
    required convenience init?(coder aDecoder: NSCoder) {
    
    let name = aDecoder.decodeObject(forKey: PropertyKey.nameKey) as! String
        
        // Because photo is an optional property of Meal, use conditional cast.
        let photo = aDecoder.decodeObject(forKey: PropertyKey.photoKey) as? UIImage
        
         let rating = aDecoder.decodeInteger(forKey: PropertyKey.ratingKey)
        
        // Must call designated initializer.
        self.init(name: name, photo: photo, rating: rating)
        
        
        
        
        
        
     
    }
    
}



     
