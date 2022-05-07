//
//  CIBCustomerDao.h
//  CIBMobileBank
//
//  Created by shencw on 2021/11/3.
//  Copyright © 2021 Newland Payment. All rights reserved.
//

#import "CIBXAppDAOBase.h"

@class CIBXAppConfigModel;

NS_ASSUME_NONNULL_BEGIN

@interface CIBXAppConfigDao : CIBXAppDAOBase
+ (nonnull instancetype)sharedInstance;

/// 保存应用信息
/// @param cache 聊天内容
- (BOOL)save:(CIBXAppConfigModel *)cache;

/// 保存多条应用信息
/// @param caches 应用信息列表
- (BOOL)saveObjes:(NSArray *)caches;


/// 根据uuid获取应用信息
/// @param appid 应用id
- (CIBXAppConfigModel *)selectXAppConfigWithAPPID:(NSString *)appid;

/// 获取数据条数
- (NSNumber *)getCount;

/// 更新应用信息
/// @param model 应用信息
- (BOOL)updateModel:(CIBXAppConfigModel *)model;

/// 删除应用信息
/// @param appid 应用id
- (BOOL)deleteWithId:(NSString *)appid;

@end

NS_ASSUME_NONNULL_END
