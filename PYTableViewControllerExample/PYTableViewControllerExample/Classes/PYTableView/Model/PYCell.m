//
//  SettingTableViewCell.m
//  PYTableViewControllerExample
//
//  Created by 谢培艺 on 15/9/18.
//  Copyright (c) 2015年 谢培艺. All rights reserved.
//

#import "PYCell.h"

@implementation PYCell

- (CGFloat)height
{
    // 默认高为44
    return _height ? _height : 44;
}

// 初始化
- (instancetype)init
{
    PYCell *cell = [super init];
    // 默认cell选中样式
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    return cell;
}

+ (instancetype)cellWithTitle:(NSString *)title
{
    PYCell *cell = [[self alloc] init];
    cell.title = title;
    return cell;
}


+ (instancetype)cellWithTitle:(NSString *)title icon:(NSString *)icon
{
    PYCell *cell = [self cellWithTitle:title];
    cell.icon = icon;
    return cell;
}

+ (instancetype)cellWithTitle:(NSString *)title accessoryTitle:(NSString *)accessoryTitle
{
    PYCell *cell = [self cellWithTitle:title];
    cell.accessoryTitle = accessoryTitle;
    return cell;
}

+ (instancetype)cellWithTitle:(NSString *)title accessoryView:(UIView *)accessoryView
{
    PYCell *cell = [self cellWithTitle:title];
    cell.accessoryView = accessoryView;
    return cell;
}

+ (instancetype)cellWithTitle:(NSString *)title icon:(NSString *)icon accessoryTitle:(NSString *)accessoryTitle
{
    PYCell *cell  =  [self cellWithTitle:title icon:icon];
    cell.accessoryTitle = accessoryTitle;
    return cell;
}

+ (instancetype)cellWithTitle:(NSString *)title icon:(NSString *)icon accessoryView:(UIView *)accessoryView
{
    PYCell *cell  =  [self cellWithTitle:title icon:icon];
    cell.accessoryView = accessoryView;
    return cell;
}

+ (instancetype)cellWithTitle:(NSString *)title didSelectedCell:(PYTableViewCellBlock)option
{
    PYCell *cell  =  [self cellWithTitle:title];
    cell.option = option;
    return cell;
}

+ (instancetype)cellWithTitle:(NSString *)title accessoryTitle:(NSString *)accessoryTitle didSelectedCell:(PYTableViewCellBlock)option
{
    PYCell *cell = [self cellWithTitle:title didSelectedCell:option];
    cell.accessoryTitle = accessoryTitle;
    return cell;
}


+ (instancetype)cellWithTitle:(NSString *)title icon:(NSString *)icon accessoryTitle:(NSString *)accessoryTitle didSelectedCell:(PYTableViewCellBlock)option
{
    
    PYCell *cell  =  [self cellWithTitle:title icon:icon didSelectedCell:option];
    cell.accessoryTitle = accessoryTitle;
    return cell;
}

+ (instancetype)cellWithTitle:(NSString *)title icon:(NSString *)icon didSelectedCell:(PYTableViewCellBlock)option
{
    PYCell *cell = [self cellWithTitle:title icon:icon];
    cell.option = option;
    return cell;
}

+ (instancetype)cellWithTitle:(NSString *)title accessoryView:(UIView *)accessoryView didSelectedCell:(PYTableViewCellBlock) option
{
    PYCell *cell = [self cellWithTitle:title accessoryView:accessoryView];
    cell.option = option;
    return cell;
}

+ (instancetype)cellWithTitle:(NSString *)title icon:(NSString *)icon backgroundImage:(NSString *)backgroundImage
{
    PYCell *cell = [self cellWithTitle:title icon:icon];
    cell.backgroundImage = backgroundImage;
    return cell;
}

+ (instancetype)cellWithTitle:(NSString *)title icon:(NSString *)icon accessoryView:(UIView *)accessoryView didSelectedCell:(PYTableViewCellBlock)option
{
    PYCell *cell = [self cellWithTitle:title icon:icon accessoryView:accessoryView];
    cell.option = option;
    return cell;
}

+ (instancetype)cellWithTitle:(NSString *)title icon:(NSString *)icon backgroundImage:(NSString *)backgroundImage didSelectedCell:(PYTableViewCellBlock)option
{
    PYCell *cell = [self cellWithTitle:title icon:icon didSelectedCell:option];
    cell.backgroundImage = backgroundImage;
    return cell;
}

@end
