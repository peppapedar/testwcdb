//
//  CIBXAppDAOBase.m
//  CIBApplet
//
//  Created by shen on 2022/3/29.
//  Copyright © 2022 CIBMobileBank. All rights reserved.
//

#import "CIBXAppDAOBase.h"
#import <WCDB/WCDB.h>

@interface CIBXAppDAOBase()
@property(nonatomic,strong) WCTDatabase *database;
@end
@implementation CIBXAppDAOBase
+ (NSString *)tableName{
    return @"";
}
+ (Class)modelClass{
    return [NSObject class];
}
+ (WCTDatabase *)shareDatabase{
    static WCTDatabase *__shareobj__;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *cachesPath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject;
        NSString *persistPath = [cachesPath stringByAppendingPathComponent:@"persistPath"];
        NSString *path = [persistPath stringByAppendingPathComponent:@"testwcdb.db"];
        WCTDatabase *database = [[WCTDatabase alloc] initWithPath:path];
        __shareobj__ = database;
    });
    return __shareobj__;
}
- (id)init{
    if (self=[super init]) {
        [self createTable];
    }
    return self;
}
- (WCTDatabase *)database {
    if (!_database) {
        _database = [self.class shareDatabase];
        [self createTable];
    }
    return [self.class shareDatabase];
}
- (BOOL)createTable {
    if ([self.database canOpen]) {
        BOOL result = [self.database createTableAndIndexesOfName:self.class.tableName withClass:self.class.modelClass];
        return result;
    }else{
        return NO;
    }
}
@end
