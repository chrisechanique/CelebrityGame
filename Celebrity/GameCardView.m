//
//  GameCardView.m
//  Celebrity
//
//  Created by Christopher Echanique on 11/24/14.
//
//

#import "GameCardView.h"

@interface GameCardView()

@property (nonatomic, strong) IBOutlet UILabel *wordLabel;
@property (nonatomic, strong) IBOutlet UILabel *timerLabel;

@end


@implementation GameCardView

- (instancetype)initWithWord:(NSString *)word timer:(NSString *)timer {
    if (self = [super init]) {
        self.wordLabel.text = word;
        self.timerLabel.text = timer;
        [self setup];
    }
    return self;
}

- (void)setup {
    self.layer.shadowColor = [UIColor darkGrayColor].CGColor;
    self.layer.shadowOffset = CGSizeMake(0, 1);
    self.layer.shadowOpacity = 0.2f;
    self.layer.shadowRadius  = 0.3f;
    self.layer.cornerRadius = 2;
}

- (void)updateTimerLabel:(NSString *)timer {
    self.timerLabel.text = timer;
}

- (void)updateWordLabel:(NSString *)word {
    self.wordLabel.text = word;
}

@end
