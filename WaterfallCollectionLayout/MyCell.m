//
//  MyCell.m
//  WaterfallCollectionLayout
//
//  Created by chaowen fu on 2017/3/26.
//  Copyright © 2017年 fuchaowen. All rights reserved.
//

#import "MyCell.h"
#define WIDTH [UIScreen mainScreen].bounds.size.width
@implementation MyCell

- (instancetype)initWithFrame:(CGRect)frame{
    
    self=[super initWithFrame:frame];
    
    if (self) {
        
        
        
        
        for (int i=0; i<5; i++) {
            
            for (int j=0; j<2; j++) {
                
                
                UIButton * btn=[UIButton buttonWithType:UIButtonTypeSystem];
                
                btn.frame=CGRectMake(5+((WIDTH-25)/9+5)*j, 5+35*i,(WIDTH-25)/9 , 30);
                
                [btn setTitle:@"确认" forState:UIControlStateNormal];
                
                btn.layer.borderColor=[UIColor grayColor].CGColor;
                
                btn.layer.borderWidth=1;
                
                [btn addTarget:self action:@selector(go) forControlEvents:UIControlEventTouchUpInside];
                
                [self.contentView addSubview:btn];
                
            }
            
            
        }
        self.backgroundColor=[UIColor grayColor];
        
        
    }
    
    
    
    return self;
}

- (void)go{



}

@end
