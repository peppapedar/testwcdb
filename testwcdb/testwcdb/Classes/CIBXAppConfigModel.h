//
//  CIBMiniProgramConfigModel.h
//  CIBMobileBank
//
//  Created by shencw on 2021/12/24.
//  Copyright © 2021 Newland Payment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WCDB/WCDB.h>

NS_ASSUME_NONNULL_BEGIN

@interface CIBXAppConfigModel : NSObject
@property (nonatomic,assign)NSInteger seq;
@property (nonatomic,strong)NSString *appName;
@property (nonatomic,strong)NSString *appId;
@property (nonatomic,strong)NSString *appType;
@property (nonatomic,strong)NSString *downloadUrl;
@property (nonatomic,strong)NSString *appVersion;
@property (nonatomic,strong)NSString *key;
@property (nonatomic,strong)NSString *md5;
@property (nonatomic,strong)NSString *plugins;
@property (nonatomic,strong)NSString *apiVersion;
@property (nonatomic,assign)long expireTimestamp;
@property (nonatomic,assign)NSInteger openCache;
@property (nonatomic,strong)NSString *files;

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

NS_ASSUME_NONNULL_END
