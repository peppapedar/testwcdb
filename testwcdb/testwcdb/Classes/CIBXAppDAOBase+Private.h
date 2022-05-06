//
//  CIBDAOBase+Private.h
//  CIBMobileBank
//
//  Created by 苏尚进 on 2021/3/25.
//  Copyright © 2021 Newland Payment. All rights reserved.
//

#import "CIBXAppDAOBase.h"
#import <WCDB/WCDB.h>
NS_ASSUME_NONNULL_BEGIN

@interface CIBXAppDAOBase (Private)
+ (WCTDatabase *)shareDatabase;
@property(nonatomic,readonly) WCTDatabase *database;
@end

NS_ASSUME_NONNULL_END
