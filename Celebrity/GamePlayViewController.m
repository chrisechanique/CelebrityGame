//
//  GamePlayViewController.m
//  Celebrity
//
//  Created by Christopher Echanique on 11/24/14.
//
//

#import "GamePlayViewController.h"
#import "WordPile.h"
#import "GameCardView.h"

@interface GamePlayViewController ()

@property (nonatomic, strong) WordPile *wordPile;
@property (nonatomic, strong) GameCardView *gameCard;
@property (nonatomic, strong) NSArray *randomWords;
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, assign) int time;

@end

@implementation GamePlayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setup];
}

- (void)setup {
    self.wordPile = [[WordPile alloc] initWithWords:@[@"Chris", @"PJ Lowry", @"Jesus", @"Oprah", @"Jessie J"]];
    self.randomWords = [self.wordPile randomWords];
    self.gameCard = [[GameCardView alloc] initWithWord:[self.randomWords firstObject] timer:@"90"];
}

@end
