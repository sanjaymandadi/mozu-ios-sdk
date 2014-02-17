
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



@protocol MOZUCreditAuditEntry
@end


/**
	Properties of an audit entry logged for a store credit or gift card.
*/
@interface MOZUCreditAuditEntry : JSONModel<MOZUCreditAuditEntry>

/**
The type of activity associated with the audit entry. Possible values are: Created, Updated, Deleted, Activated, Deactivated, or Transaction.
*/
@property(nonatomic) NSString* activityType;

/**
Detail log that describes the activity performed for this credit audit entry.
*/
@property(nonatomic) NSString* details;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo* auditInfo;

@end
