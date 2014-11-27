//
//  WordPile.m
//  Celebrity
//
//  Created by Christopher Echanique on 11/24/14.
//
//

#import "WordPile.h"

@implementation WordPile

- (instancetype)initWithWords:(NSArray *)words {
    if (self = [super init]) {
        [self addWordsFromArray:words];
    }
    return self;
}

- (void)addWord:(NSString *)word {
    if (word.length < 1) {
        return;
    }
    [self.words addObject:[word capitalizedString]];
}

- (void)addWordsFromArray:(NSArray *)wordsArray {
    for (NSString *word in wordsArray) {
        [self addWord:word];
    }
}

- (NSMutableArray *)words {
    if (!_words) {
        _words = [NSMutableArray new];
    }
    return _words;
}

- (NSArray *)randomWords {
    NSMutableArray *array = [self.words copy];
    for (NSInteger x = 0; x < [array count]; x++) {
        NSInteger randInt = (random() % ([array count] - x)) + x;
        [array exchangeObjectAtIndex:x withObjectAtIndex:randInt];
    }
    NSLog(@"orig array: %@\n\n", [self.words description]);
    NSLog(@"random array: %@\n\n", [array description]);
    return array;
}

@end
