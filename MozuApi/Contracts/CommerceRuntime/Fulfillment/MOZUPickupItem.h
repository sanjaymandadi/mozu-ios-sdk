
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "JSONModel.h"



@protocol MOZUPickupItem
@end


/**
	Properties of an item in an in-store pickup.
*/
@interface MOZUPickupItem : JSONModel<MOZUPickupItem>

/**
Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/
@property(nonatomic) NSString * productCode;

/**
The quantity of the item in the in-store pickup.
*/
@property(nonatomic) NSInteger quantity;

@end

