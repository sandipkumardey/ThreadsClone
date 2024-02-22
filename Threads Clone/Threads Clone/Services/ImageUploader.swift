//
//  ImageUploader.swift
//  Threads Clone
//
//  Created by Sandip Kumar Dey on 21/12/23.
//

import Firebase
import FirebaseStorage

struct ImageUploader{
    static func uploadImage(_ image: UIImage) async throws -> String? {
        guard let imageData = image.jpegData(compressionQuality: 0.25) else { return nil }
        let filename = NSUUID().uuidString
        let strorageRef = Storage.storage().reference(withPath: "/profile_images/\(filename)")
        
        
        do {
            let _ = try await strorageRef.putDataAsync(imageData)
            let url = try await strorageRef.downloadURL()
            return url.absoluteString
        } catch {
            print("DEBUG: Failed to upload image with error \(error.localizedDescription)")
            return nil
        }
    }
}
