//
//  CIBXAppDAOBase.h
//  CIBApplet
//
//  Created by shen on 2022/3/29.
//  Copyright © 2022 CIBMobileBank. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

@interface CIBXAppDAOBase : NSObject
@property(nonatomic,class,readonly) NSString *tableName;//表名，子类重写
@property(nonatomic,class,readonly) Class modelClass;//对象类，子类重写
@end

NS_ASSUME_NONNULL_END
