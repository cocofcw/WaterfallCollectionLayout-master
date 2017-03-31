//
//  FactoryCell.h
//  WaterfallCollectionLayout
//
//  Created by chaowen fu on 2017/3/26.
//  Copyright © 2017年 fuchaowen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInfo.h"
#import "MyCell.h"
#import "Animal.h"
#import "Planet.h"
#import "AnimalCell.h"
#import "PlanetCell.h"
@class BaseCell,BaseModel;
@interface FactoryCell : NSObject

+ (BaseCell*)cellForModel:(BaseModel*)modelForCell;

+ (Class)cellClassForModel:(BaseModel*)dataModel;

@end
