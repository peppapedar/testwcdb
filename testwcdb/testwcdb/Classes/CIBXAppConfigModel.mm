//
//  CIBMiniProgramConfigModel.m
//  CIBMobileBank
//
//  Created by shencw on 2021/12/24.
//  Copyright © 2021 Newland Payment. All rights reserved.
//

#import "CIBXAppConfigModel.h"
//#import "CIBXAppConfigModel+WCTTableCoding.h"
@implementation CIBXAppConfigModel
WCDB_IMPLEMENTATION(CIBXAppConfigModel)

WCDB_SYNTHESIZE(CIBXAppConfigModel, seq)
WCDB_SYNTHESIZE(CIBXAppConfigModel, downloadUrl)
WCDB_SYNTHESIZE(CIBXAppConfigModel, appId)
WCDB_SYNTHESIZE(CIBXAppConfigModel, appVersion)
WCDB_SYNTHESIZE(CIBXAppConfigModel, expireTimestamp)
WCDB_SYNTHESIZE(CIBXAppConfigModel, key)
WCDB_SYNTHESIZE(CIBXAppConfigModel, openCache)
WCDB_SYNTHESIZE(CIBXAppConfigModel, md5)
WCDB_SYNTHESIZE(CIBXAppConfigModel, files)
WCDB_SYNTHESIZE(CIBXAppConfigModel, plugins)
WCDB_SYNTHESIZE(CIBXAppConfigModel, appName)
WCDB_SYNTHESIZE(CIBXAppConfigModel, apiVersion)
WCDB_SYNTHESIZE(CIBXAppConfigModel, appType)

WCDB_PRIMARY_AUTO_INCREMENT(CIBXAppConfigModel, seq)
@end
