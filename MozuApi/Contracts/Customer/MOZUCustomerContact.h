
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
#import "MOZUAddress.h"
#import "MOZUAuditInfo.h"
#import "MOZUPhone.h"
#import "MOZUContactType.h"



@protocol MOZUCustomerContact
@end


/**
	Contact information, including the contact's name, address, phone numbers, email addresses, and company (if supplied). Also indicates whether this is a billing, shipping, or billing and shipping contact.
*/
@interface MOZUCustomerContact : JSONModel<MOZUCustomerContact>

/**
Unique identifier of the customer account.
*/
@property(nonatomic) NSInteger accountId;

/**
The legal or doing business as (DBA) or tradestyle name of the business or organization. The maximum character length is 200.
*/
@property(nonatomic) NSString * companyOrOrganization;

/**
The email address of the specified user or the email address associated with the specified entity.
*/
@property(nonatomic) NSString * email;

/**
The fax number associated with the customer account.
*/
@property(nonatomic) NSString * faxNumber;

/**
The first name of the contact. The maximum character length is 200.
*/
@property(nonatomic) NSString * firstName;

/**
Identifier of the customer contact.
*/
@property(nonatomic) NSInteger id;

/**
The last name or surname of the contact. The maximum character length is 200.
*/
@property(nonatomic) NSString * lastNameOrSurname;

/**
The middle name or the first initial of the middle name of the contact. The maximum character length is 100.
*/
@property(nonatomic) NSString * middleNameOrInitial;

/**
Address associated with the customer account contact.
*/
@property(nonatomic) MOZUAddress* address;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo* auditInfo;

/**
List of phone numbers associated with the customer account contact.
*/
@property(nonatomic) MOZUPhone* phoneNumbers;

/**
List of the types associated with a customer contact, such as Billing or Fulfillment.
*/
@property(nonatomic) NSArray<MOZUContactType>* types;

@end

