
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "MOZUClient.h"
#import "MOZUAPIContext.h"

#import "MOZUAuthTicket.h"
#import "MOZUCustomerContact.h"
#import "MOZUCustomerContactCollection.h"


@interface MOZUCustomerContactResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the specified contact for a customer account such as a billing or shipping contact.
@param accountId Unique identifier of the customer account whose contact information is being retrieved.
@param contactId Unique identifier of the customer account contact to retrieve.
*/

-(void)accountContactWithAccountId:(NSInteger)accountId contactId:(NSInteger)contactId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerContact* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Retrieves a list of contacts for a customer according to any specified filter criteria and sort options.
@param accountId Unique identifier of the customer account associated with the contact information to retrieve.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy 
@param startIndex 
*/

-(void)accountContactsWithAccountId:(NSInteger)accountId startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerContactCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new contact for a customer account such as a new shipping address.
@param contact Properties of the new contact. Required properties: Contact.Email, ContactType.
@param accountId Unique identifier of the customer account containing the new contact.
*/

-(void)addAccountContactWithContact:(MOZUContact*)contact accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerContact* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates a contact for a specified customer account such as to update addresses or change which contact is the primary contact for billing.
@param contact All properties the updated contact will have. Required properties: Name and email address.
@param accountId Unique identifier of the customer account whose contact information is being updated.
@param contactId Unique identifer of the customer account contact being updated.
*/

-(void)updateAccountContactWithContact:(MOZUContact*)contact accountId:(NSInteger)accountId contactId:(NSInteger)contactId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerContact* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes a contact for the specified customer account.
@param accountId Unique identifier of the customer account.
@param contactId Unique identifier of the customer account contact to delete.
*/

-(void)deleteAccountContactWithAccountId:(NSInteger)accountId contactId:(NSInteger)contactId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler;



@end