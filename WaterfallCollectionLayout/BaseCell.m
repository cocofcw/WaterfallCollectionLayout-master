//
//  BaseCell.m
//  WaterfallCollectionLayout
//
//  Created by chaowen fu on 2017/3/26.
//  Copyright © 2017年 fuchaowen. All rights reserved.
//

#import "BaseCell.h"

@implementation BaseCell

- (instancetype)initWithFrame:(CGRect)frame{

    self=[super initWithFrame:frame];
    
    if (self) {
        
    }

    return self;

}

+ (CGFloat)cellHeightForData:(BaseModel *)cellData{

    return 0.0;
   
}

@end
