//
//  ViewController.m
//  WaterfallCollectionLayout
//
//  Created by ci123 on 16/1/26.
//  Copyright © 2016年 fuchaowen. All rights reserved.
//

#import "ViewController.h"
#import "WaterfallColectionLayout.h"
#import "BaseCell.h"
#import "MyCell.h"
#import "UserInfo.h"
#import "FactoryCell.h"
@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property(nonatomic,strong)UICollectionView* collectionView;
@property(nonatomic,strong)UICollectionViewLayout* layout;
@property(nonatomic,strong)NSMutableArray * dataArray;
@property(nonatomic,strong)NSArray* heightArr;
@end

@implementation ViewController
static NSString * identifer = @"CollectionCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataArray=[NSMutableArray arrayWithCapacity:1];
    
    UserInfo * ui=[[UserInfo alloc]init];
    
    [ui setValue:@"china" forKey:@"username"];
    
    [self.dataArray addObject:ui];
    
    for (int i = 0; i<58; i++) {
        
        Animal * an=[[Animal alloc]init];
        
        [an setValue:@"老虎" forKey:@"username"];
        
        [self.dataArray addObject:an];
    }
    for (int i=0; i<41; i++) {
        
        Planet * pl=[[Planet alloc]init];
        
        [pl setValue:@"玫瑰" forKey:@"username"];
        
        [self.dataArray addObject:pl];
        
    }
    
    // Do any additional setup after loading the view, typically from a nib.
//    self.edgesForExtendedLayout=UIRectEdgeNone;
    [self.view addSubview:self.collectionView];
}

#pragma mark collectionViewDelegate-collectionViewDatesource
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    BaseModel * modelforcell=[self.dataArray objectAtIndex:indexPath.row];
    Class cellclass=[FactoryCell cellClassForModel:modelforcell];
    
    BaseCell* cell=nil;
    
 //   if ([cellclass isKindOfClass:[MyCell class]]) {
        
        cell =[collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([cellclass class]) forIndexPath:indexPath];
//    }else{
//    
//    
//       cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifer forIndexPath:indexPath];
//    
//    }
    
  
   
    return cell;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dataArray.count;
}
#pragma mark getter-setter
-(UICollectionView *)collectionView{
    if(!_collectionView){
        _collectionView = [[UICollectionView alloc]initWithFrame:self.view.frame collectionViewLayout:self.layout];
        _collectionView.backgroundColor = [UIColor whiteColor];
        _collectionView.delegate=self;
        _collectionView.dataSource=self;
        
        for (int i=0; i<self.dataArray.count; i++) {
            
            BaseModel * modelforcell=[self.dataArray objectAtIndex:i];
            
            Class cellclass=[FactoryCell cellClassForModel:modelforcell];
            
 //           if ([cellclass  isKindOfClass:[MyCell class]]) {
                [_collectionView registerClass:[cellclass class] forCellWithReuseIdentifier:NSStringFromClass([cellclass class])];
//            }else{
//            
//            
//               [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:identifer];
//            
//            
//            }
            
            
            
        }
       
        
    }
    return _collectionView;
}
-(UICollectionViewLayout *)layout{
    if(!_layout){
        _layout = [[WaterfallColectionLayout alloc]initWithItemsHeightBlock:^CGFloat(NSIndexPath *index) {
            return [self.heightArr[index.item] floatValue];
        }];
        
    }
    return _layout;
}
-(NSArray *)heightArr{
    if(!_heightArr){
        //随机生成高度
        NSMutableArray *arr = [NSMutableArray array];
        for (int i = 0; i<100; i++) {
            if (i==0) {
                [arr addObject:@(180)];
            }else{
            [arr addObject:@(arc4random()%50+80)];
            }
        }
        _heightArr = [arr copy];
    }
    return _heightArr;
}
@end

@interface CollectionViewCell()

@end
@implementation CollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.contentView.backgroundColor=[self randomColor];
    }
    return self;
}
-(UIColor *) randomColor
{
    CGFloat hue = ( arc4random() % 256 / 256.0 ); //0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5; // 0.5 to 1.0,away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5; //0.5 to 1.0,away from black
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
}
@end

