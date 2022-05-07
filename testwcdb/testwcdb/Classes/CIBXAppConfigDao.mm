//
//  CIBCustomerDao.m
//  CIBMobileBank
//
//  Created by shencw on 2021/11/3.
//  Copyright © 2021 Newland Payment. All rights reserved.
//

#import "CIBXAppConfigDao.h"
#import <WCDB/WCDB.h>
#import "CIBXAppDAOBase+Private.h"
#import "CIBXAppConfigModel.h"

@interface CIBXAppConfigModel (WCTTableCoding) <WCTTableCoding>

WCDB_PROPERTY(seq)
WCDB_PROPERTY(appId)
WCDB_PROPERTY(downloadUrl)
WCDB_PROPERTY(appVersion)
WCDB_PROPERTY(files)
WCDB_PROPERTY(appName)
WCDB_PROPERTY(key)
WCDB_PROPERTY(md5)
WCDB_PROPERTY(plugins)
WCDB_PROPERTY(apiVersion)
WCDB_PROPERTY(expireTimestamp)
WCDB_PROPERTY(openCache)
WCDB_PROPERTY(appType)

@end


@implementation CIBXAppConfigDao
+ (instancetype)sharedInstance{
    static dispatch_once_t once;
    static id __singleton__;
    dispatch_once( &once, ^{ __singleton__ = [[self alloc] init]; } );
    return __singleton__;
}
+ (NSString *)tableName{
    return @"cib_xapp_appconfig";
}
+ (Class)modelClass{
    return [CIBXAppConfigModel class];
}
/// 保存应用信息
/// @param cache 聊天内容
- (BOOL)save:(CIBXAppConfigModel *)cache{
    cache.isAutoIncrement = YES;
    BOOL issuccess = [self.database insertObject:cache into:self.class.tableName];
    return issuccess;
}

/// 保存多条应用信息
/// @param caches 应用信息列表
- (BOOL)saveObjes:(NSArray *)caches{
    for(CIBXAppConfigModel *model in caches){
        model.isAutoIncrement = YES;
    }
    return [self.database insertObjects:caches into:self.class.tableName];
}


/// 根据appid获取应用信息
/// @param appid 应用id
- (CIBXAppConfigModel *)selectXAppConfigWithAPPID:(NSString *)appid{
    if (appid.length == 0) {
        return nil;
    }
    NSArray *array = [self.database getObjectsOfClass:self.class.modelClass fromTable:self.class.tableName where:CIBXAppConfigModel.appId==appid];
    return array.count>0?array[0]:nil;
}

/// 更新应用信息
/// @param model 应用信息
- (BOOL)updateModel:(CIBXAppConfigModel *)model{
    WCTUpdate *update = [self.database prepareUpdateTable:self.class.tableName
                                             onProperties:CIBXAppConfigModel.AllProperties];
    [update where:CIBXAppConfigModel.appId == model.appId];
    BOOL result = [update executeWithObject:model];
    return result;
}

/// 删除应用信息
/// @param appid 应用id
- (BOOL)deleteWithId:(NSString *)appid{
    if (appid.length == 0) {
        return NO;
    }
    return [self.database deleteObjectsFromTable:self.class.tableName where:CIBXAppConfigModel.appId==appid];
}
/// 获取数据条数
- (NSNumber *)getCount{
    NSNumber *count = [self.database getOneValueOnResult:CIBXAppConfigModel.AnyProperty.count() fromTable:self.class.tableName];
    return count;
}
@end
