//
//  PlanetCell.m
//  WaterfallCollectionLayout
//
//  Created by chaowen fu on 2017/3/26.
//  Copyright © 2017年 fuchaowen. All rights reserved.
//

#import "PlanetCell.h"

@implementation PlanetCell

- (instancetype)initWithFrame:(CGRect)frame{
    
    self=[super initWithFrame:frame];
    
    if (self) {
        
        UILabel * label=[[UILabel alloc]initWithFrame:CGRectMake(5, 5, 50, 50)];
        
        label.font=[UIFont systemFontOfSize:9];
        
        label.text=@"我是植物";
        
        [self.contentView addSubview:label];
        
        self.backgroundColor=[UIColor greenColor];
        
        
    }
    
    return self;
    
}

@end
