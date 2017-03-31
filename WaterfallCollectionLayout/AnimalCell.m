//
//  AnimalCell.m
//  WaterfallCollectionLayout
//
//  Created by chaowen fu on 2017/3/26.
//  Copyright © 2017年 fuchaowen. All rights reserved.
//

#import "AnimalCell.h"

@implementation AnimalCell

- (instancetype)initWithFrame:(CGRect)frame{

    self=[super initWithFrame:frame];
    
    if (self) {
        
        UIView * view=[[UIView alloc]initWithFrame:CGRectMake(5, 5, 50, 50)];
        
        view.backgroundColor=[UIColor redColor];
        
        [self.contentView addSubview:view];
        
        self.backgroundColor=[UIColor brownColor];
    }

    return self;

}

@end
