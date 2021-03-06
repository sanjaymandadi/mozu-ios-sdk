
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



@protocol MOZUSubscribingSite
@end


/**
	Properties for the site associated with a subscription including audit info, if active, and the unique ID for the site.
*/
@interface MOZUSubscribingSite : JSONModel<MOZUSubscribingSite>

/**
Indicates if the object or feature is active. This indicator is used for subscriptions (at the site or tenant level), customer accounts, products and variations.
*/
@property(nonatomic) NSNumber * isActive;

/**
Unique identifier for the site. This ID is used at all levels of a store, catalog, and tenant to associate objects to a site.
*/
@property(nonatomic) NSNumber * siteId;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo *auditInfo;

@end

