
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUPaymentAction.h"

@implementation MOZUPaymentAction
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
	return YES;
}

+ (JSONKeyMapper *)keyMapper {
	NSDictionary *dict = @{
		@"newValue" : @"theNewValue",
		@"newBillingInfo" : @"theNewBillingInfo",
		@"newFullPath" : @"theNewFullPath",
		@"newPassword" : @"theNewPassword",
		@"description" : @"theDescription",
		@"newProductCode" : @"theNewProductCode",
	};

	return [[JSONKeyMapper alloc] initWithDictionary:dict];
}


@end


