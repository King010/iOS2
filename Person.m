//
//  Person.m
//  test1
//
//  Created by renren-mac on 2017/12/12.
//  Copyright © 2017年 renren-mac. All rights reserved.
//

#import "Person.h"

@implementation Person

-(Person *)initWithName:(NSString *)name
{
    if(self=[super init])
    {
        self.name=name;
    }
    return self;
}
+(Person *)personWithName:(NSString *)name
{
    Person *person=[[Person alloc]initWithName:name];
    return person;
}
-(void)showMessage:(NSString *)infomation
{
    NSLog(@"My name is %@ ,the information is %@",_name,infomation);
}

-(NSComparisonResult)comparePerson :(Person *)person
{
    return [_name compare:person.name];
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"name=%@",_name];
}




@end
