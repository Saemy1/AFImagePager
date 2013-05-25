//
//  AFElement.h
//  AFImagePager
//
//  Created by Samuel Schmid on 25.05.13.
//  Copyright (c) 2013 Samuel Schmid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AFElement : NSObject
@property (nonatomic) NSString * text;
@property (nonatomic) NSString * imageUrl;
- (id) initWithText:(NSString *) text imageUrl:(NSString *) imageUrl;
@end
