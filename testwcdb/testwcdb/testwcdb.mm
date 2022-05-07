//
//  testwcdb.m
//  testwcdb
//
//  Created by cib on 2022/5/6.
//

#import "testwcdb.h"
#import "CIBXAppConfigDao.h"

@implementation testwcdb

- (void)testdbInsert {
    NSLog(@"插入一条数据");
    [[CIBXAppConfigDao sharedInstance] deleteWithId:@"111"];
}

@end
