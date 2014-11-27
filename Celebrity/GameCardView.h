//
//  GameCardView.h
//  Celebrity
//
//  Created by Christopher Echanique on 11/24/14.
//
//

#import <UIKit/UIKit.h>

@interface GameCardView : UIView

- (instancetype)initWithWord:(NSString *)word timer:(NSString *)timer;
- (void)updateTimerLabel:(NSString *)timer;

@end
