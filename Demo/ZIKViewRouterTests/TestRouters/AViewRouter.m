//
//  AViewRouter.m
//  ZIKRouterTests
//
//  Created by zuik on 2018/4/11.
//  Copyright © 2018 zuik. All rights reserved.
//

#import "AViewRouter.h"
@import ZIKRouter.Internal;
#import "TestConfig.h"

DeclareRoutableView(AViewController, TestAViewRouter)

@implementation AViewRouter

+ (void)registerRoutableDestination {
    [self registerView:[AViewController class]];
#if !TEST_BLOCK_ROUTE
    [self registerViewProtocol:ZIKRoutableProtocol(AViewInput)];
#endif
}

- (id)destinationWithConfiguration:(ZIKViewRouteConfiguration *)configuration {
    AViewController *destination = [[AViewController alloc] init];
    return destination;
}

@end