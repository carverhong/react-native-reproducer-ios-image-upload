//
//  PhotoModule.m
//  HelloWorld
//
//  Created by carverhong on 2024/8/10.
//

#import "PhotoModule.h"

@implementation PhotoModule

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(getPhoto:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
  NSString* path = [[NSBundle mainBundle] pathForResource:@"20240808144728-0" ofType:@"jpg"];
  
  resolve(@{
    @"uri": [NSString stringWithFormat:@"file://%@", path],
    @"name": [path lastPathComponent],
    @"mime": @"image/jpeg"
  });
}

@end
