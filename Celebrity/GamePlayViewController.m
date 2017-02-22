//
//  GamePlayViewController.m
//  Celebrity
//
//  Created by Christopher Echanique on 11/24/14.
//
//

#import "GamePlayViewController.h"
#import "CelebrityPile.h"
#import "Celebrity.h"
#import "GameCardView.h"

@interface GamePlayViewController ()

@property (nonatomic, strong) GameSession *game;

@property (nonatomic, strong) IBOutlet UILabel *wordLabel;
@property (nonatomic, strong) IBOutlet UILabel *timerLabel;
@property (nonatomic, strong) IBOutlet UIView *cardView;

@end

@implementation GamePlayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setup];
}

- (void)setup {
    CelebrityPile *pile = [[CelebrityPile alloc] initWithCelebrities:[Celebrity celebritiesWithArrayOfNames:@[@"Chris", @"PJ Lowry", @"Jesus", @"Oprah", @"Jessie J"]]];
    self.game = [[GameSession alloc] initWithPile:pile numberOfTeams:2];
    self.game.delegate = self;
    [self updateTimerLabel:kSprintDuration];
    [self updateWordLabel:self.game.currentCelebrityName];
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionNextCelebrity:)];
    [self.view addGestureRecognizer:gesture];
    [self setupViews];
    
}

- (void)setupViews {
    self.cardView.layer.shadowColor = [UIColor darkGrayColor].CGColor;
    self.cardView.layer.shadowOffset = CGSizeMake(0, 1);
    self.cardView.layer.shadowOpacity = 1;
    self.cardView.layer.shadowRadius  = 1.0f;
    self.cardView.layer.cornerRadius = 2;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.game beginSprint];
}

- (void)updateTimerLabel:(NSUInteger)timeInSeconds {
    self.timerLabel.text = [NSString stringWithFormat:@"%lu", (unsigned long)timeInSeconds];
}

- (void)updateWordLabel:(NSString *)word {
    self.wordLabel.text = word;
}

#pragma mark - Action Methods

- (void)actionNextCelebrity:(id)sender {
    [self.game teamScored];
    if (self.game.currentCelebrityName) {
        [self updateWordLabel:self.game.currentCelebrityName];
    }
}



#pragma mark - GameSessionDelegate Methods

- (void)gameTimer:(NSTimer *)timer didFireWithSecondsLeft:(NSUInteger)secondsLeft {
    [self updateTimerLabel:secondsLeft];
}

- (void)didFinishSprint {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Sprint Ended" message:@"This is the end of the sprint." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    
}

- (void)didFinishRound {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Round Ended" message:@"This is the end of the round." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}

@end
