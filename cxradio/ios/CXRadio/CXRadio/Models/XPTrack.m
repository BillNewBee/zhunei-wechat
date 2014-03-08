//
//  XPShow.m
//  XPBroadcast
//
//  Created by tashigaofei on 13-11-21.
//  Copyright (c) 2013年 ZhaoYanJun. All rights reserved.
//

#import "XPTrack.h"

@implementation XPTrack

//- (void)setValue:(id)value forKey:(NSString *)key
//{
//    if ([key isEqualToString:@"description"]) {
//        self.showDescription = value;
//        return;
//    }
//    
//    if ([key isEqualToString:@"photo"]) {
//        self.photoUrl = value;
//        return;
//    }
//    
//    [super setValue:value forKey:key];
//    
//}

- (BOOL)isEqual:(XPTrack *) anObject
{
	if (self == anObject)
		return YES;
	
	if ([anObject isKindOfClass:[XPTrack class]]) {
        return [self.src isEqualToString:anObject.src];
    }
    
    return NO;
}

- (NSURL *)audioFileURL
{
    return [NSURL URLWithString: [self src]];
}


#pragma  mark  Default

//===========================================================
//  Keyed Archiving
//
//===========================================================
- (void)encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject:self.title forKey:@"title"];
    [encoder encodeObject:self.src forKey:@"src"];
}

- (id)initWithCoder:(NSCoder *)decoder
{
    self = [super init];
    if (self) {
        self.title = [decoder decodeObjectForKey:@"title"];
        self.src = [decoder decodeObjectForKey:@"src"];
    }
    return self;
}

//===========================================================
// - (NSArray *)keyPaths
//
//===========================================================
- (NSArray *)keyPaths
{
    NSArray *result = [NSArray arrayWithObjects:
                       @"title",
                       @"src",
                       nil];
    
    return result;
}

//===========================================================
// - (NSString *)descriptionForKeyPaths
//
//===========================================================
- (NSString *)descriptionForKeyPaths
{
    NSMutableString *desc = [NSMutableString string];
    [desc appendString:@"\n\n"];
    [desc appendFormat:@"Class name: %@\n", NSStringFromClass([self class])];
    
    NSArray *keyPathsArray = [self keyPaths];
    for (NSString *keyPath in keyPathsArray) {
        [desc appendFormat: @"%@: %@\n", keyPath, [self valueForKey:keyPath]];
    }
    
    return [NSString stringWithString:desc];
}
- (NSString *)description
{
    return [self descriptionForKeyPaths]; 
}



@end
