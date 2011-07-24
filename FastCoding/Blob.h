//
//  Blob.h
//  FastCoding
//
//  Copyright Matt Rajca 2011. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Blob : NSObject < NSCoding > {
  @private
	int integer;
	unsigned int unsignedInteger;
	short shortValue;
	unsigned short unsignedShortValue;
	long longValue;
	unsigned long unsignedLongValue;
	long long longLongValue;
	unsigned long long unsignedLongLongValue;
	float floatingPointValue;
	double doubleValue;
	
	char character;
	unsigned char unsignedCharacter;
	BOOL boolean;
	
	SEL selector;
	Class classValue;
}

@property (nonatomic, assign) int integer;
@property (nonatomic, assign) unsigned int unsignedInteger;
@property (nonatomic, assign) short shortValue;
@property (nonatomic, assign) unsigned short unsignedShortValue;
@property (nonatomic, assign) long longValue;
@property (nonatomic, assign) unsigned long unsignedLongValue;
@property (nonatomic, assign) long long longLongValue;
@property (nonatomic, assign) unsigned long long unsignedLongLongValue;
@property (nonatomic, assign) float floatingPointValue;
@property (nonatomic, assign) double doubleValue;

@property (nonatomic, assign) char character;
@property (nonatomic, assign) unsigned char unsignedCharacter;
@property (nonatomic, assign) BOOL boolean;

@property (nonatomic, assign) SEL selector;
@property (nonatomic, assign) Class classValue;

@end
