//
//  CustomCollectionViewCell.m
//  FlowLayout
//
//  Created by smith on 16/4/27.
//  Copyright © 2016年 smith. All rights reserved.
//

#import "CustomCollectionViewCell.h"

@implementation CustomCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.imageV = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)] ;
        [self.contentView addSubview:self.imageV] ;
    }
    return self ;
}


@end
