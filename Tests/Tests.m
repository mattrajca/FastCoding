//
//  Tests.m
//  Tests
//
//  Copyright Matt Rajca 2011. All rights reserved.
//

#import "Tests.h"

#import "Blob.h"

@implementation Tests

- (void)setUp {
    [super setUp];
    
    blob = [[Blob alloc] init];
}

- (void)tearDown {
	[blob release];
	
    [super tearDown];
}

- (Blob *)unarchivedBlob {
	NSData *data = [NSKeyedArchiver archivedDataWithRootObject:blob];
	return [NSKeyedUnarchiver unarchiveObjectWithData:data];
}

- (void)testInteger {
	blob.integer = 59021;
	
	STAssertEquals([self unarchivedBlob].integer, blob.integer,
				   @"Couldn't unarchive integer");
}

- (void)testUnsignedInteger {
	blob.unsignedInteger = 319562841U;
	
	STAssertEquals([self unarchivedBlob].unsignedInteger, blob.unsignedInteger,
				   @"Couldn't unarchive unsigned integer");
}

- (void)testShortValue {
	blob.shortValue = 24997;
	
	STAssertEquals([self unarchivedBlob].shortValue, blob.shortValue,
				   @"Couldn't unarchive short value");
}

- (void)testUnsignedShortValue {
	blob.unsignedShortValue = 42133;
	
	STAssertEquals([self unarchivedBlob].unsignedShortValue, blob.unsignedShortValue,
				   @"Couldn't unarchive unsigned short value");
}

- (void)testLongValue {
	blob.longValue = 414896625L;
	
	STAssertEquals([self unarchivedBlob].longValue, blob.longValue,
				   @"Couldn't unarchive long value");
}

- (void)testUnsignedLongValue {
	blob.unsignedLongValue = 3956196258UL;
	
	STAssertEquals([self unarchivedBlob].unsignedLongValue, blob.unsignedLongValue,
				   @"Couldn't unarchive unsigned long value");
}

- (void)testLongLongValue {
	blob.longLongValue = 6295614892962641258LL;
	
	STAssertEquals([self unarchivedBlob].longLongValue, blob.longLongValue,
				   @"Couldn't unarchive long long value");
}

- (void)testUnsignedLongLongValue {
	blob.unsignedLongLongValue = 10495614892962641258ULL;
	
	STAssertEquals([self unarchivedBlob].unsignedLongLongValue, blob.unsignedLongLongValue,
				   @"Couldn't unarchive unsigned long long value");
}

- (void)testFloatingPointValue {
	blob.floatingPointValue = 397.42f;
	
	STAssertEquals([self unarchivedBlob].floatingPointValue, blob.floatingPointValue,
				   @"Couldn't unarchive fp value");
}

- (void)testDoubleValue {
	blob.doubleValue = 397.4290298914082;
	
	STAssertEquals([self unarchivedBlob].doubleValue, blob.doubleValue,
				   @"Couldn't unarchive double value");
}

- (void)testCharacter {
	blob.character = 'z';
	
	STAssertEquals([self unarchivedBlob].character, blob.character,
				   @"Couldn't unarchive character");
}

- (void)testUnsignedCharacter {
	blob.unsignedCharacter = 'c';
	
	STAssertEquals([self unarchivedBlob].unsignedCharacter, blob.unsignedCharacter,
				   @"Couldn't unarchive unsigned character");
}

- (void)testBoolean {
	blob.boolean = YES;
	
	STAssertEquals([self unarchivedBlob].boolean, blob.boolean,
				   @"Couldn't unarchive boolean");
}

- (void)testSelector {
	blob.selector = @selector(release);
	
	STAssertEquals([self unarchivedBlob].selector, blob.selector,
				   @"Couldn't unarchive selector");
}

- (void)testClass {
	blob.classValue = [NSAttributedString class];
	
	STAssertEquals([self unarchivedBlob].classValue, blob.classValue,
				   @"Couldn't unarchive class value");
}

- (void)testString {
	blob.string = [NSString stringWithString:@"John Doe"];
	
	STAssertEqualObjects([self unarchivedBlob].string, blob.string,
						 @"Couldn't unarchive NSString value");
}

@end
