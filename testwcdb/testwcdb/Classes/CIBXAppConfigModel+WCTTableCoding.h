//
//  CIBMiniProgramConfigModel+WCTTableCoding.h
//  CIBMobileBank
//
//  Created by shencw on 2021/12/24.
//  Copyright © 2021 Newland Payment. All rights reserved.
//

#import "CIBXAppConfigModel.h"
#import <WCDB/WCDB.h>
NS_ASSUME_NONNULL_BEGIN

@interface CIBXAppConfigModel (WCTTableCoding)<WCTTableCoding>
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
