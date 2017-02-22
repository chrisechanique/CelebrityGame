//
//  WordPile.h
//  Celebrity
//
//  Created by Christopher Echanique on 11/24/14.
//
//

#import <Foundation/Foundation.h>

@class Celebrity;

@interface CelebrityPile : NSObject

@property (nonatomic, strong) NSMutableArray *celebrities;
- (instancetype)initWithCelebrities:(NSArray *)celebrities;
- (void)addCelebrity:(Celebrity *)celebrity;
- (NSMutableSet *)randomPile;

@end
