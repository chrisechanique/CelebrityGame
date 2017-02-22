//
//  Celebrity.h
//  Celebrity
//
//  Created by Chris Echanique on 11/27/14.
//
//

#import <Foundation/Foundation.h>
#import <CoreImage/CoreImage.h>

@interface Celebrity : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *photoURL;
@property (nonatomic, strong) NSString *descriptionText;

- (instancetype)initWithName:(NSString *)name;
+ (Celebrity *)celebrityWithName:(NSString *)name;
+ (NSArray *)celebritiesWithArrayOfNames:(NSArray *)names;

@end
