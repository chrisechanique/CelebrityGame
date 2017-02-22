//
//  Team.h
//  Celebrity
//
//  Created by Chris Echanique on 11/28/14.
//
//

#import <Foundation/Foundation.h>
#import "GameSession.h"
#import "Celebrity.h"

@interface Team : NSObject

@property (nonatomic, strong) NSMutableDictionary *celebrityPileDictionary;
@property (nonatomic, strong) NSString *teamName;

- (instancetype)initWithTeamName:(NSString *)name;
- (void)addCelebrity:(Celebrity *)celebrity ForGameType:(GameRoundType)type;
- (NSUInteger)scoreForGameType:(GameRoundType)type;

@end
