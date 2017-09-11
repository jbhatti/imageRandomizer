//
//  ArtistManager.m
//  ImageRandomizer
//
//  Created by Jaison Bhatti on 2017-09-11.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "ArtistManager.h"
#import "Artist.h"

@interface ArtistManager ()
@property (nonatomic, strong) NSArray<Artist *>*artists;
@property (nonatomic, assign) NSUInteger index;


@end

@implementation ArtistManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self createArtists];
        _index = 0;
    }
    return self;
}

-(void) createArtists {
    Artist *a1 = [[Artist alloc] initWithName:@"Taylor Swift" andImageName:@"taylor_s"];
    Artist *a2 = [[Artist alloc] initWithName:@"Iggy P" andImageName:@"iggy_p"];
    Artist *a3 = [[Artist alloc] initWithName:@"Justin Beiber" andImageName:@"justin_b"];
    _artists = @[a1, a2, a3];
}

-(void) randomIndex {
    NSUInteger rand = arc4random_uniform((uint32_t)self.artists.count);
    if (rand == self.index) {
        [self randomIndex];
    } else {
        self.index = rand;
    }
}

- (Artist *)nextArtist {
    [self randomIndex];
    return self.artists[self.index];
}

@end
