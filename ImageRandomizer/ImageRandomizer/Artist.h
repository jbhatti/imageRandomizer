//
//  Artist.h
//  ImageRandomizer
//
//  Created by Jaison Bhatti on 2017-09-11.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Artist : NSObject

@property (nonatomic, copy) NSString* name;
@property (nonatomic,strong) UIImage* image;

-(instancetype)initWithName:(NSString*)name andImageName:(NSString *)image;

@end
