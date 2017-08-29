//
//  Movie.swift
//
//  Created by Andre Guedes on 24/06/17
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper
import RealmSwift

public class Movie: Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let overview = "overview"
    static let id = "id"
    static let coverUrl = "cover_url"
    static let title = "title"
    static let backdropsUrl = "backdrops_url"
    static let releaseYear = "release_year"
    static let duration = "duration"
  }

  // MARK: Properties
  dynamic var overview: String?
  dynamic var id: String?
  dynamic var coverUrl: String?
  dynamic var title: String?
  dynamic var backdropsUrl: [String]?
  dynamic var releaseYear: String?
  dynamic var duration: String?

  // MARK: ObjectMapper Initializers
  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.
  public required init?(map: Map){

  }

  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.
  public func mapping(map: Map) {
    overview <- map[SerializationKeys.overview]
    id <- map[SerializationKeys.id]
    coverUrl <- map[SerializationKeys.coverUrl]
    title <- map[SerializationKeys.title]
    backdropsUrl <- map[SerializationKeys.backdropsUrl]
    releaseYear <- map[SerializationKeys.releaseYear]
    duration <- map[SerializationKeys.duration]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = overview { dictionary[SerializationKeys.overview] = value }
    if let value = id { dictionary[SerializationKeys.id] = value }
    if let value = coverUrl { dictionary[SerializationKeys.coverUrl] = value }
    if let value = title { dictionary[SerializationKeys.title] = value }
    if let value = backdropsUrl { dictionary[SerializationKeys.backdropsUrl] = value }
    if let value = releaseYear { dictionary[SerializationKeys.releaseYear] = value }
    if let value = duration { dictionary[SerializationKeys.duration] = value }
    return dictionary
  }

}
