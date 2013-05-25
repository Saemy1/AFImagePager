//
//  AFElement.m
//  AFImagePager
//
//  Created by Samuel Schmid on 25.05.13.
//  Copyright (c) 2013 Samuel Schmid. All rights reserved.
//

#import "AFElement.h"

@implementation AFElement
- (id) initWithText:(NSString *) text imageUrl:(NSString *) imageUrl
{
    self = [super init];
    if(self) {
        _imageUrl = imageUrl;
        _text = text;
    }
    return  self;
}
@end
