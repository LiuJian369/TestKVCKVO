//
//  People.h
//  TestKVCKVO
//
//  Created by 刘建 on 16/8/4.
//  Copyright © 2016年 liujian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pot.h"

@interface People : NSObject

@property (nonatomic,strong) NSString* name;
@property (nonatomic,assign) NSNumber* age;
@property (nonatomic,assign) Pot* pot;
@end
