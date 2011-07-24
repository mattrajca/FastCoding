//
//  NSObject+FastCoding.h
//  FastCoding
//
//  Copyright Matt Rajca 2011. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (FastCoding)

- (void)encodePropertiesWithCoder:(NSCoder *)coder;
- (void)decodePropertiesWithCoder:(NSCoder *)coder;

@end
