
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
#import "MOZUAuditInfo.h"



@protocol MOZUChannelGroup
@end


/**
	Properties of a group of channels that share common information.
*/
@interface MOZUChannelGroup : JSONModel<MOZUChannelGroup>

/**
User-defined code that identifies the channel group.
*/
@property(nonatomic) NSString * code;

/**
User-defined name of the channel group.
*/
@property(nonatomic) NSString * name;

/**
Unique identifier of the Mozu tenant.
*/
@property(nonatomic) NSInteger tenantId;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo* auditInfo;

@end

