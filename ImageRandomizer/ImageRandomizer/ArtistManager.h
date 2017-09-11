//
//  ArtistManager.h
//  ImageRandomizer
//
//  Created by Jaison Bhatti on 2017-09-11.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Artist;

@interface ArtistManager : NSObject

- (Artist *)nextArtist;

@end
