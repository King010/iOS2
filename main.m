//
//  main.m
//  test1
//
//  Created by renren-mac on 5/12/17.
//  Copyright © 2017年 renren-mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

//函数调用
//@interface mydate : NSObject
//{
//    int iMonth;
//    int iYear;
//    int iDay;
//}
//-(void)setYear:(int)iYear;
//-(void)primalSetData:(int)iYear :(int)iMonth :(int)iDay;
//-(void)setData:(int)Year iMonth:(int)iMonth iDay:(int)iDay;
//  中缀标识符第一个可以省略，也是唯一的一个,用来解释下一个参数
//-(void)displayDateInfo;
//
//@end
//
//
//@implementation mydate
//-(void)displayDateInfo
//{
//    NSLog(@"Today is :%d.%d.%d",iYear,iMonth,iDay);
//}
//-(void)primalSetData:(int)year :(int)month :(int)day
//{
//    iYear=year;
//    iMonth=month;
//    iDay=day;
//}
//-(void)setYear:(int)year
//{
//    iYear=year;
//}
//-(void)setData:(int)year iMonth:(int)month iDay:(int)day
//{
//    iYear=year;
//    iMonth=month;
//    iDay=day;
//}
//
//
//@end
//
//
//int main(int argc, const char * argv[]) {
//    
//        // insert code here...
//        //NSAutoreleasePool * pool=[[ NSAutoreleasePool alloc] init];
//        //int sum;
//      //  sum=10+20;
//    //NSLog(@"the sum of 10 and 20 is %i",sum);
//        //[pool drain];
//    
//    mydate* date=[[mydate alloc] init];
//    [date primalSetData:2017 :12 :7];
//    [date displayDateInfo];
//    [date setData:2018 iMonth:1 iDay:1];
//    [date displayDateInfo];
//    [date setYear:2020];
//    [date displayDateInfo];
//    
//    
//    return 0;
//}

//语法块
//typedef void (^CompletionBlock)();
//脱字符（^)是块的语法标记，后面紧跟着块对象后面括号为参数
//例：int(^myBlock)(int)=^(int num){return num*multiplier//7};
//myBlock是一个块对象，返回整型值。
//有一个参数，参数也是整型值。
//参数名称为num
//等号后面至分号前面是定义块的语法结构。是赋给myBlock变量的值。
//{}里面为块对象的主体部分。
//按照调用函数的方式调用块对象
//int result = myBlock(4);//result = 28;
//@interface SampleClass : NSObject
//-(void)performActionWithCompletion:(CompletionBlock)completionBlock;
//@end
//
//@implementation SampleClass
//-(void)performActionWithCompletion:(CompletionBlock)completionBlock
//{
//    NSLog(@"Action Performed");
//    completionBlock();
//}
//@end
//
//int main()
//{
//    SampleClass *sampleClass = [[SampleClass alloc]init];
//    [sampleClass performActionWithCompletion:^{
//        NSLog(@"Completion is called to intimate action is performed.");
//    }];
//    return 0;
//    
//}
//int global=1000;


//类别
//给已经定义好的类中加方法
//但并不表示任何从子类继承
//类别特性：
//一个类别可声明任何类，即使不具备原来的实现源代码。
//任何一个类别中声明的方法将所有的原始类的实例，以及任何原始类的子类。
//在运行时，一个类别添加方法没有任何区别，一个是通过原来的类。
//@interface NSString (Myaddtion)
//
//+(NSString*)myaddtional;
//
//@end
//
//@implementation NSString(Myaddtion)
//
//+(NSString*)myaddtional
//{
//   return @"myaddtional";
//}
//
//@end



//扩展实际上是类别无类别名称。它通常被称为匿名类别。
//扩展特性
//扩展可以不声明任何类别，只为类的源代码，我们有原来的执行。
//私有方法和私有变量，只有特定的类添加一个扩展。
//扩展内声明的任何方法或变量，不能访问，即使继承类。
//

//@interface sampleclass : NSObject
//{
//    NSString *mystr;
//}
//-(void)setsampleclass;
//-(NSString*)getsampleclass;
//
//@end
//
//@interface sampleclass ()
//{
//    NSString *newstr;
//}
//@end
//
//@implementation sampleclass
//
//-(void)setsampleclass
//{
//    newstr=[NSString stringWithFormat:@"helloworld%d",arc4random()%100];
//}
//-(NSString*)getsampleclass
//{
//    return [newstr stringByReplacingOccurrencesOfString:@"hello" withString:@"你好"]  ;
//}
//
//@end

////协议
//@protocol PrintprotocalDelegate
//-(void)processcompleted;
//@end
//
//@interface PrintClass : NSObject
//{
//    id delegate;
//}
//-(void)printDetails;
//-(void)setDelegate:(id)newDelegate;
//
//@end
//
//@implementation PrintClass
//
//-(void)printDetails
//{
//    NSLog(@"Print Details");
//    [delegate processcompleted];
//}
//-(void)setDelegate:(id)newDelegate
//{
//    delegate=newDelegate;
//}
//
//@end
//
//@interface sampleclass : NSObject<PrintprotocalDelegate>
//-(void)startAction;
//@end
//
//
//@implementation sampleclass
//-(void)startAction
//{
//    PrintClass *printclass=[[PrintClass alloc]init];
//    [printclass setDelegate:self];
//    [printclass printDetails];
//}
//-(void)processcompleted
//{
//    NSLog(@"Print process completed");
//}
//
//@end


//void test1()
//{
//    NSRange rg={3,5};
//    NSLog(@"rg is %@",NSStringFromRange(rg));
//}
//
//void test2()
//{
//    NSPoint p=NSMakePoint(10, 15);
//    NSLog(@"p is%@",NSStringFromPoint(p));
//}
//
//void test3()
//{
//    NSSize s=NSMakeSize(10, 15);
//    NSLog(@"s is %@",NSStringFromSize(s));
//}
//
//void test4()
//{
//    NSRect r=NSMakeRect(10, 5, 100, 200);
//    NSLog(@"%@",NSStringFromRect(r));
//}
//
//int main(){

//不可变数组
//    NSObject *obj=[[NSObject alloc]init];
//    NSArray *array=[NSArray arrayWithObjects:@"abc",obj,@"cde",@"opq", @25,nil];
//    NSLog(@"%zi",array.count);
//    NSLog(@"%i",[array containsObject:@"cde"]);
//    NSLog(@"%@",[array lastObject]);
//    NSLog(@"%zi",[array indexOfObject:@"abc"]);
//    NSLog(@"   \n");
//    for(int i=0,len=array.count;i<len;++i)
//    {
//        NSLog(@"%@",[array objectAtIndex:i]);
//    }
//    NSLog(@"\n");
//    for(id obj in array)
//    {
//        NSLog(@ " %i %@",[array indexOfObject:obj],obj);
//    }
    //代码块遍历数组
//    [array enumerateObjectsUsingBlock:^(id obj,NSUInteger idx,BOOL *stop){
//                                                                          NSLog(@"%zi is  %@",idx,obj);
//                                                                          if(idx==2)
//                                                                          {
//                                                                              *stop=YES;
//                                                                          }
//    } ];
    //迭代器遍历
//    NSEnumerator *enumerator=[array reverseObjectEnumerator];//反向迭代器，可反向遍历数组
//    id obj2=nil;
//    while(obj2=[enumerator nextObject])
//    {
//        NSLog(@"%@",obj2);
//    }
//    
//    NSEnumerator *enumerator2=[array objectEnumerator];
//    NSLog(@"all is %@",[enumerator2 allObjects ]);
    
    //不可变数组
    //注意事项
//    NSArray中只能存放对象，不能存放基本数据类型，通常我们可以通过在基本数据类型前加@进行转换；
//    数组中的元素后面必须加nil以表示数据结束；
//    makeObjectsPerformSelector执行数组中对象的方法，其参数最多只能有一个；
//    上面数组操作中无论是数组的追加、删除、截取都没有改变原来的数组，只是产生了新的数组而已；
//    对象的比较除了使用系统自带的方法，我们可以通过自定义比较器的方法来实现
//    NSArray *array=[NSArray arrayWithObjects:@3,@1,@2, nil];
//    NSArray *array2=[array arrayByAddingObject:@4];//初始化array2，将array后加4赋值过去
//    NSLog(@"%@",array2);
//    NSLog(@"%@",[array arrayByAddingObjectsFromArray:[NSArray arrayWithObjects:@5,@6, nil]]);
//    NSLog(@"%@",[array2 subarrayWithRange:NSMakeRange(1, 3)]);//从数组下标取值，范围
//    NSLog(@"%@",[array componentsJoinedByString:@","]);
//    //数组排序
//    //自带的比较器
//    NSArray *array3=[array sortedArrayUsingSelector:@selector(compare:)];
//    NSLog(@"%@",array3);
//    //代码块
//    
   
    
//可变字符串
//    NSMutableString *mystr=[[NSMutableString alloc]initWithCapacity:10];
//    [mystr setString:@"hello"];
//    NSLog(@"%@",mystr);
//    
//    [mystr appendString:@"world!"];
//    NSLog(@"%@",mystr);
//
//    [mystr appendFormat:@"我的年龄是%i",18];
//    NSLog(@"%@",mystr);
//
//    NSRange range=[mystr rangeOfString:@"我的年龄"];
//    [mystr replaceCharactersInRange:range withString:@"honey"];
//    NSLog(@"%@",mystr);
//
//    [mystr insertString:@"hehehhe" atIndex:5];
//    NSLog(@"%@",mystr);
//
//    [mystr deleteCharactersInRange:[mystr rangeOfString:@"hehehhe"]];
//    NSLog(@"%@",mystr);


    
    
    
    
//foundation 框架
    
//    test1();
//    test2();
//    test3();
//    test4();
    //文件读取
//    NSDate *date1=[NSDate date];
//    NSLog(@"%@",date1);
//    NSDate *date2=[NSDate dateWithTimeIntervalSinceNow:200];
//    NSLog(@"%@",date2);
//    NSString *path=@"/Users/renren-mac/Desktop/test.rtf";
//    NSString *str=[NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
//
//    NSLog(@"the str is %@",str);
    
//    //NSURL *url=[NSURL URLWithString:@"file:///Users/renren-mac/Desktop/test.rtf"];
//    NSURL *url=[NSURL URLWithString:@"http://www.baidu.com"];
//    NSString *str=[NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
//    NSLog(@"%@",str);
    //文件写入
    
//    NSString *path=@"/Users/renren-mac/Desktop/test.txt.rtf";
//    NSError *error1;
//    NSString *newstr=@"你好 世界";
//    [newstr writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:&error1];
//    if(error1){
//        NSLog(@"write fail,the error is %@",[error1 localizedDescription]);//调用localizedDescription是只打印关键错误信息
//    }else{
//        NSLog(@"write success!");
//    }

//    NSMutableArray *marray=[NSMutableArray array];
//    [marray addObject:@"Users"];
//    [marray addObject:@"renren-mac"];
//    [marray addObject:@"Desktop"];
//    NSString *path=[NSString pathWithComponents:marray];
//    NSLog(@"%@",path);
//    NSLog(@"%@",[path pathComponents]);//路径拆分
//    
//    NSLog(@"%i",[path isAbsolutePath]);//判断是否绝对路径
//    
//    NSLog(@"%@",[path lastPathComponent]);//打印最后一个目录
//    
//    NSLog(@"%@",[path stringByDeletingLastPathComponent]);//删除最后一个目录
//    
//    NSLog(@"%@",[path stringByAppendingPathComponent:@"test.txt"]);//给路径最后拼接一个目录

//    NSString *path=@"/Users/renren-mac/Desktop/test.txt";
//    NSLog(@"%@",[path pathExtension]);//取得扩展名  txt
//    
//    NSLog(@"%@",[path stringByDeletingPathExtension]);//删除扩展名
//    
//    NSLog(@"%@",[@"/Users/renren-mac/Desktop/test" stringByAppendingPathExtension:@"mp3" ]);//添加扩展名
//    
    
    
//协议
//协议是一组没有实现的方法列表，任何的类均可采纳协议并具体实现这组方法。
//    Objective-C在NeXT时期曾经试图引入多重继承的概念，但由于协议的出现而没有实现之。
//    sampleclass *myclass=[[sampleclass alloc]init];
//    [myclass startAction];
    
    
    
    
    
    
    
//扩展
//    sampleclass *mycalss=[[sampleclass alloc]init];
//    [mycalss setsampleclass];
//    NSLog(@"thr str is %@",[mycalss getsampleclass]);
    
    
    
    
//类别
//    NSString *mystr=[NSString myaddtional];
//    NSLog(@"mystr is %@",mystr);
    
    
    
//    NSLog(@"File:%s",__FILE__);
//    NSLog(@"Date is :%s",__DATE__);
//    NSLog(@"TIME is %s",__TIME__);
//    NSLog(@"line is %d",__LINE__);
//    NSLog(@"anst is %d ",__STDC__);
    
    
    
    

//    __block int local=500;
//    void(^block)(void)=^(void)
//    {
//        local++;//在代码块中改变局部变量编译不会通过，需要在局部变量面前加上__block(两个_);
//        NSLog(@"local :%d",local);
//    };
//    block();
//    NSLog(@"local :%d",local);
    
//    void (^blocks)(void)=^(void)
//    {
//        global++;
//        NSLog(@"global:%d",global);
//    };
//    blocks();
//    NSLog(@"global:%d",global);
    

    
//语法块
//    static void(^const blocks)(int)=^(int i)
//    {
//        if(i>0)
//        {
//            NSLog(@"num:%d",i);
//            blocks(i-1);
//        }
//    };
//    blocks(3);
    
//    void (^printBlock)(NSString *x);
//    printBlock=^(NSString *str)
//    {
//        NSLog(@"print:%@",str);
//    };
//    printBlock(@"hello!");

//    NSArray*stringarr=[NSArray arrayWithObjects:@"abc 1",@"abc 21",@"abc 12",@"abc 13",@"abc 05",nil];
//    NSComparator sortBlock=^(id string1,id string2)
//    {
//        return [string1 compare:string2];
//    };
//    NSArray *sortarray=[stringarr sortedArrayUsingComparator:sortBlock];
//    NSLog(@"sortarray:%@",sortarray);
//}

//字典
//int main()
//{
//    NSDictionary *dic1=[NSDictionary dictionaryWithObject:@"1" forKey:@"a"];
//    
//    NSDictionary *dic2=[NSDictionary dictionaryWithObjectsAndKeys:@"1", @"a",
//                        @"2",@"b",
//                        @"3",@"c",nil];
//    NSLog(@"%@",dic2);
//    
//    NSLog(@"%@",dic1);
//    NSDictionary *dic3=@{@"1":@"a", @"3":@"c",@"2":@"e",@"5":@"v"};
//    NSLog(@"%@",dic3);
//    for(id key in dic3)
//    {
//        NSLog(@"%@=%@",key,[dic3 objectForKey:key]);
//    }
//    
    //装箱拆箱
    //基本类型
//    NSNumber *number1=[NSNumber numberWithChar:'a'];
//    NSArray *array=[NSArray arrayWithObject:number1];
//    NSLog(@"%@",array);
//    NSNumber *number2=[array lastObject];
//    char char1=[number2 charValue];
//    NSLog(@"%c",char1);
    //结构体
    
//    typedef struct {
//        int year;
//        int month;
//        int day;
//    }Date;
//    Date date={2017,12,11};
//    char *type=@encode(Date);
//    NSValue *value=[NSValue value:&date withObjCType:type];
//    NSArray *array2=[NSArray arrayWithObject:value];
//    NSLog(@"%@",array2);
//    Date date2;
//    [value getValue:&date2];
//    NSLog(@"%i %i %i",date2.year,date2.month,date2.day );
//
//}


//反射

int main()
{
    
//    Person *person1=[Person personWithName:@"joko"];
//    NSLog(@"%i",[person1 isKindOfClass:[NSObject class]]);
//    NSLog(@"%i",[person1 isMemberOfClass:[NSObject class]]);
//    NSLog(@"%i",[person1 isMemberOfClass:[Person class]]);
//    NSLog(@"%i",[person1 conformsToProtocol:@protocol(NSCopying)]);
//    NSLog(@"%i",[person1 respondsToSelector:@selector(showMessage:)]);
//    
//    [person1 showMessage:@"Hello world"];
//    [person1 performSelector:@selector(showMessage:) withObject:@"Hello world"];
//    
    //反射，动态生成一个类
//    NSString *className=@"Person";
//    Class myclass=NSClassFromString(className);
//    Person *person2=[[myclass alloc]init];
//    person2.name=@"happy";
//    NSLog(@"%@",person2);
//    
//    //类转换成字符串
//    NSLog(@"%@,%@",NSStringFromClass(myclass),NSStringFromClass([Person class]));
//    
//    //调用方法
//    NSString *methodName=@"showMessage:";
//    SEL mysel=NSSelectorFromString(methodName);
//    Person *person3=[[myclass alloc]init];
//    person3.name=@"Rosa";
//    [person3 performSelector:mysel withObject:@"Hello world!"];
//    NSLog(@"%@",NSStringFromSelector(mysel));
    
    

    //.plist   xml解档
//    NSString *path=@"/Users/renren-mac/Desktop/arrayXml.plist";
//    NSArray *array1=@[@"Kenshin",@"Kaoru",@"Rosa"];
//    [array1 writeToFile:path atomically:YES];
//    
//    NSArray *array2=[NSArray arrayWithContentsOfFile:path];
//    [array2 enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
//        NSLog(@"array2[%lu]=%@",idx,obj);
//    }];
//    
//    NSString *path2=@"/Users/renren-mac/Desktop/dicXml.plist";
//    NSDictionary *dic1=@{@"name":@"Kenshin",@"age":@28,@"height":@172.5};
//    [dic1 writeToFile:path2 atomically:YES];
//    
//    NSDictionary *dic2=[NSDictionary dictionaryWithContentsOfFile:path2];
//    [dic2 enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
//        NSLog(@"dic2[%@]=%@",key,obj);
//    }];
    
    //NSKeyedArchiver归档 密文存储
//    //nsstring归档
//    NSString *str1=@"Hello,world!";
//    NSString *path1=@"/Users/renren-mac/Desktop/archiver1.arc";
//    if(![NSArchiver archiveRootObject:str1 toFile:path1]){
//        NSLog(@"archiver failed!");
//    }
//    //nsstring解档
//    NSString *str2=[NSUnarchiver unarchiveObjectWithFile:path1];
//    NSLog(@"str2==%@",str1);
    //nsarray解档
//    NSString *path2=@"/Users/renren-mac/Desktop/archiver2.arc";
//    NSArray *array1=@[@"jack",@"rose",@"alex"];
//    if(![NSArchiver archiveRootObject:array1 toFile:path2])
//    {
//        NSLog(@"archiver failed");
//    }
//   //NSARRAY归档 
//    NSArray *array2=[NSUnarchiver unarchiveObjectWithFile:path2];
//    [array2 enumerateObjectsUsingBlock:^(id obj,NSUInteger idx,BOOL *stop){
//        NSLog(@"array2 [%lu]=%@",idx,obj);
//    }];
//    
    
    
    
    
    
    return 0;
}


