//
//  Celebrity.m
//  Celebrity
//
//  Created by Chris Echanique on 11/27/14.
//
//

#import "Celebrity.h"

@implementation Celebrity

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

+ (Celebrity *)celebrityWithName:(NSString *)name {
    return [[Celebrity alloc] initWithName:name];
}

+ (NSArray *)celebritiesWithArrayOfNames:(NSArray *)names {
    NSMutableArray *celebs = [NSMutableArray new];
    for (NSString *name in names) {
        [celebs addObject:[Celebrity celebrityWithName:name]];
    }
    return [NSArray arrayWithArray:celebs];
}

- (NSString *)name {
    return [_name capitalizedString];
}

@end
