//
//  FactoryCell.m
//  WaterfallCollectionLayout
//
//  Created by chaowen fu on 2017/3/26.
//  Copyright © 2017年 fuchaowen. All rights reserved.
//

#import "FactoryCell.h"

@implementation FactoryCell

+ (BaseCell*)cellForModel:(BaseModel *)modelForCell{

    Class cellClass=[self cellClassForModel:modelForCell];
    
    BaseCell * cell=[[cellClass alloc]init];
    
    return cell;


}
+ (Class)cellClassForModel:(BaseModel *)dataModel{

    Class cellClass=nil;
    
    if ([dataModel isKindOfClass:[UserInfo class]]) {
       
        cellClass=[MyCell class];
    }
    if ([dataModel isKindOfClass:[Animal class]]) {
        cellClass=[AnimalCell class];
    }
    if ([dataModel isKindOfClass:[Planet class]]) {
        cellClass=[PlanetCell class];
    }
    return cellClass;
  
}

@end
