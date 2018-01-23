//
//  Person.h
//  test1
//
//  Created by renren-mac on 2017/12/12.
//  Copyright © 2017年 renren-mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@class account ;

@interface Person : NSObject

@property (nonatomic ,copy)NSString *name;
@property (nonatomic,retain)account *account1;

-(Person *)initWithName:(NSString *)name;
+(Person *)personWithName:(NSString *)name;
-(void)showMessage:(NSString *)infomation;

-(NSComparisonResult)comparePerson :(Person *)person;

@end
