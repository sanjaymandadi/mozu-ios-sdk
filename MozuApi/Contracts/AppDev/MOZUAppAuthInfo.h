
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



@protocol MOZUAppAuthInfo
@end


/**
	The information required to authenticate third party applications against the Mozu API.
*/
@interface MOZUAppAuthInfo : JSONModel<MOZUAppAuthInfo>

/**
Unique identifier of the application. System-supplied and read-only.
*/
@property(nonatomic) NSString * applicationId;

/**
System-supplied alphanumeric code used to authenticate applications. This string is only available for viewing in Mozu Dev Center.
*/
@property(nonatomic) NSString * sharedSecret;

@end

