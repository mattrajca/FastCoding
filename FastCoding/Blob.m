//
//  Blob.m
//  FastCoding
//
//  Copyright Matt Rajca 2011. All rights reserved.
//

#import "Blob.h"

#import "NSObject+FastCoding.h"

@implementation Blob

@synthesize integer, unsignedInteger, shortValue, unsignedShortValue;
@synthesize longValue, unsignedLongValue, longLongValue, unsignedLongLongValue;
@synthesize floatingPointValue, doubleValue;
@synthesize character, unsignedCharacter, boolean;
@synthesize selector, classValue, string;

- (void)encodeWithCoder:(NSCoder *)aCoder {
	[self encodePropertiesWithCoder:aCoder];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
	self = [super init];
	[self decodePropertiesWithCoder:aDecoder];
	return self;
}

- (void)dealloc {
	[string release];
	[super dealloc];
}

@end
