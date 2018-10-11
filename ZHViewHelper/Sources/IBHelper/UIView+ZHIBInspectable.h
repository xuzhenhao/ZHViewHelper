//
//  UIView+ZHIBInspectable.h
//  ZHViewHelper
//
//  Created by xuzhenhao on 2018/10/10.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 UIView 面板可配置属性
 */
@interface UIView (ZHIBInspectable)
/**圆角*/
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;

/**描边宽度*/
@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
/**描边颜色*/
@property (nonatomic, strong) IBInspectable UIColor *borderColor;

/** 阴影偏移*/
@property (nonatomic, assign) IBInspectable CGSize shadowOffset;
/**阴影颜色*/
@property (nonatomic, strong) IBInspectable UIColor *shadowColor;
/**阴影模糊度,越大越模糊自然。小的时候有明显分割线*/
@property (nonatomic, assign) IBInspectable CGFloat shadowRadius;
/**阴影透明度*/
@property (nonatomic, assign) IBInspectable CGFloat shadowOpacity;

@end

NS_ASSUME_NONNULL_END
