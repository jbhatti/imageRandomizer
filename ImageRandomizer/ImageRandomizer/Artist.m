//
//  Artist.m
//  ImageRandomizer
//
//  Created by Jaison Bhatti on 2017-09-11.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "Artist.h"

@implementation Artist

- (instancetype)initWithName:(NSString*)name andImageName:(NSString *)image {
    self = [super init];
    if (self) {
        _name = name;
        _image = [UIImage imageNamed:image];
    }
    return self;
}

@end
