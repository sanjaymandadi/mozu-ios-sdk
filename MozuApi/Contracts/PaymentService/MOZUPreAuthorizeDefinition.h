
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
#import "MOZUPreAuthorizeTransactionTypeDataContract.h"



@protocol MOZUPreAuthorizeDefinition
@end


/**
	Definition of the preauthorization gateway.
*/
@interface MOZUPreAuthorizeDefinition : JSONModel<MOZUPreAuthorizeDefinition>

/**
Identifier of the entity.
*/
@property(nonatomic) NSInteger id;

/**
The product environment URL associated with the preauthorization gateway.
*/
@property(nonatomic) NSString * preAuthorizeProdUrl;

/**
The test environment URL associated with the preauthorization gateway.
*/
@property(nonatomic) NSString * preAuthorizeTestUrl;

/**
The type of preauthorization gateway.
*/
@property(nonatomic) MOZUPreAuthorizeTransactionTypeDataContract* type;

@end

