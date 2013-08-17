//
//  synthesize_in_2013Tests.m
//  synthesize-in-2013Tests
//
//  Created by azu on 2013/08/17.
//  Copyright (c) 2013 azu. All rights reserved.
//

#import "synthesize_in_2013Tests.h"
#import "ViewController.h"
#import "objc/runtime.h"

@implementation synthesize_in_2013Tests

- (void)setUp {
    [super setUp];

    // Set-up code here.
}

- (void)tearDown {
    // Tear-down code here.

    [super tearDown];
}


- (void)testPropertyIvar {
    NSArray *classNames = [self instanceVarNamesInClass:[ViewController class]];
    STAssertTrue([classNames containsObject:@"_fetchedResultsController"], @"ivarがある");
}

- (void)testReadOnlyPropertyIvar {
    NSArray *classNames = [self instanceVarNamesInClass:[ViewController class]];
    STAssertTrue([classNames containsObject:@"_readOnlyController"], @"ivarがある");
}


// http://stackoverflow.com/questions/1440974/outputting-ivars-from-description-method
- (NSArray *)instanceVarNamesInClass:(Class) pClass {
    unsigned int varCount;
    Ivar *vars = class_copyIvarList(pClass, &varCount);
    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:0];
    for (int i = 0; i < varCount; i++) {
        Ivar var = vars[i];
        const char *name = ivar_getName(var);
        [arr addObject:@(name)];
    }
    free(vars);
    return arr;
}
@end
