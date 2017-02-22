//
//  WordPile.m
//  Celebrity
//
//  Created by Christopher Echanique on 11/24/14.
//
//

#import "CelebrityPile.h"
#import "Celebrity.h"

@implementation CelebrityPile

- (instancetype)initWithCelebrities:(NSArray *)celebrities{
    if (self = [super init]) {
        [self addCelebritiesFromArray:celebrities];
    }
    return self;
}

- (void)addCelebrity:(Celebrity *)celebrity {
    if (celebrity.name.length < 1) {
        return;
    }
    [self.celebrities addObject:celebrity];
}

- (void)addCelebritiesFromArray:(NSArray *)celebArray {
    for (Celebrity *celeb in celebArray) {
        [self addCelebrity:celeb];
    }
}

- (NSMutableArray *)celebrities {
    if (!_celebrities) {
        _celebrities = [NSMutableArray new];
    }
    return _celebrities;
}

- (NSMutableSet *)randomPile {
    return [NSMutableSet setWithArray:self.celebrities];
}

@end
