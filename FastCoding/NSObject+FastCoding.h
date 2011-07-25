//
//  NSObject+FastCoding.h
//  FastCoding
//
//  Copyright Matt Rajca 2011. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (FastCoding)

// Implement the method below to return an array of NSStrings representing the names of
// properties you wish to skip during encoding and decoding.
// The default implementation returns an empty array.

+ (NSArray *)propertiesToSkipDuringFastCoding;

- (void)encodePropertiesWithCoder:(NSCoder *)coder;
- (void)decodePropertiesWithCoder:(NSCoder *)coder;

@end
