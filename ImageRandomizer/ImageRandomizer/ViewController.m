//
//  ViewController.m
//  ImageRandomizer
//
//  Created by Jaison Bhatti on 2017-09-11.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "ViewController.h"
#import "ArtistManager.h"
#import "Artist.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *labelView;
@property (nonatomic, strong) ArtistManager* manager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.manager = [ArtistManager new];
    [self updateView];
}

-(void) updateView {
    Artist* artist = [self.manager nextArtist];
    self.labelView.text = artist.name;
    self.imageView.image = artist.image;
    [self.labelView sizeToFit];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)randomizer:(id)sender {
    [self updateView];
}


@end
