//
//  WordPile.h
//  Celebrity
//
//  Created by Christopher Echanique on 11/24/14.
//
//

#import <Foundation/Foundation.h>

@interface WordPile : NSObject

@property (nonatomic, strong) NSMutableArray *words;
- (instancetype)initWithWords:(NSArray *)words;
- (void)addWord:(NSString *)word;
- (NSArray *)randomWords;

@end
