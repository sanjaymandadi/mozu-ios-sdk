
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
#import "MOZUCustomerAccount.h"



@protocol MOZUCustomerAccountAndAuthInfo
@end


/**
	The authentication information associated with a customer account.
*/
@interface MOZUCustomerAccountAndAuthInfo : JSONModel<MOZUCustomerAccountAndAuthInfo>

/**
If true, this customer account and its associated data was imported from an external source.
*/
@property(nonatomic) BOOL isImport;

/**
The password required to authenticate this customer account.
*/
@property(nonatomic) NSString * password;

/**
The unique identifier of the customer account.
*/
@property(nonatomic) MOZUCustomerAccount* account;

@end

