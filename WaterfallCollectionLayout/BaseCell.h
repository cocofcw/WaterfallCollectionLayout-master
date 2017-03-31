//
//  BaseCell.h
//  WaterfallCollectionLayout
//
//  Created by chaowen fu on 2017/3/26.
//  Copyright © 2017年 fuchaowen. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BaseModel;
@interface BaseCell : UICollectionViewCell

@property (nonatomic,strong)BaseModel * cellForData;

+ (CGFloat)cellHeightForData:(BaseModel*)cellData;

@end
