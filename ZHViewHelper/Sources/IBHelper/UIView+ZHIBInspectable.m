//
//  UIView+ZHIBInspectable.m
//  ZHViewHelper
//
//  Created by xuzhenhao on 2018/10/10.
//

#import "UIView+ZHIBInspectable.h"
#import <objc/runtime.h>

static  void * cornerRadiusKey = @"ZHInspectableCornerRadiusKey";
static  void * borderWidthKey = @"ZHInspectableBorderWidthKey";
static  void * borderColorKey = @"ZHInspectableBorderColorKey";

static  void * shadowOffsetKey = @"ZHInspectableshadowOffsetKey";
static  void * shadowColorKey = @"ZHInspectableShadowColorKey";
static  void * shadowRadiousKey = @"ZHInspectableShadowRadiousKey";
static  void * shadowOpacityKey = @"ZHInspectableShadowOpacityKeyKey";

@implementation UIView (ZHIBInspectable)

#pragma mark - CoreRadius
- (void)setCornerRadius:(CGFloat)cornerRadius {
    objc_setAssociatedObject(self, cornerRadiusKey, @(cornerRadius), OBJC_ASSOCIATION_ASSIGN);
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}

- (CGFloat)cornerRadius {
    return [objc_getAssociatedObject(self, cornerRadiusKey) floatValue];
}

#pragma mark - Border
- (void)setBorderWidth:(CGFloat)borderWidth {
    objc_setAssociatedObject(self, borderWidthKey, @(borderWidth), OBJC_ASSOCIATION_ASSIGN);
    self.layer.borderWidth = borderWidth;
    self.layer.masksToBounds = YES;
}

- (CGFloat)borderWidth {
    return [objc_getAssociatedObject(self, borderWidthKey) floatValue];
}
- (void)setBorderColor:(UIColor *)borderColor {
    objc_setAssociatedObject(self, borderColorKey,borderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.layer.borderColor = borderColor.CGColor;
}

- (UIColor *)borderColor {
    return objc_getAssociatedObject(self, borderColorKey);
}

#pragma mark - shadow
- (void)setShadowOffset:(CGSize)shadowOffset{
    objc_setAssociatedObject(self, shadowOffsetKey,@(shadowOffset), OBJC_ASSOCIATION_ASSIGN);
    self.layer.shadowOffset = shadowOffset;
}
- (CGSize)shadowOffset{
    return [objc_getAssociatedObject(self, shadowOffsetKey) CGSizeValue];
}
- (void)setShadowColor:(UIColor *)shadowColor{
    objc_setAssociatedObject(self, shadowColorKey,shadowColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.layer.shadowColor = shadowColor.CGColor;
    self.layer.masksToBounds = NO;
}
- (UIColor *)shadowColor{
    return objc_getAssociatedObject(self, shadowColorKey);
}
- (void)setShadowRadius:(CGFloat)shadowRadius{
    objc_setAssociatedObject(self, shadowRadiousKey, @(shadowRadius), OBJC_ASSOCIATION_ASSIGN);
    self.layer.shadowRadius = shadowRadius;
}
- (CGFloat)shadowRadius{
    return [objc_getAssociatedObject(self, shadowRadiousKey) floatValue];
}
- (void)setShadowOpacity:(CGFloat)shadowOpacity{
    objc_setAssociatedObject(self, shadowOpacityKey, @(shadowOpacity), OBJC_ASSOCIATION_ASSIGN);
    self.layer.shadowOpacity = shadowOpacity;
}
- (CGFloat)shadowOpacity{
    return [objc_getAssociatedObject(self, shadowOpacityKey) floatValue];
}

@end
