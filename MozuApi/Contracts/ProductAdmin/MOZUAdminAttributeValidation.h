
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



@protocol MOZUAdminAttributeValidation
@end


/**
	Validates the attribute configured for the customer in the storefront against the attribute configured in Mozu admin.
*/
@interface MOZUAdminAttributeValidation : JSONModel<MOZUAdminAttributeValidation>

/**
The maximum date allowed including month, day, and year. System-supplied and read-only.
*/
@property(nonatomic) NSDate * maxDateValue;

/**
The maximum number that can be entered as a value for an extensible attribute.
*/
@property(nonatomic) NSNumber * maxNumericValue;

/**
The maximum character length possible for a string value entered for an extensible attribute.
*/
@property(nonatomic) NSNumber * maxStringLength;

/**
The minimum date allowed including month, day, and year. System-supplied and read-only.
*/
@property(nonatomic) NSDate * minDateValue;

/**
The minimum numeric value required to validate an extensible attribute.
*/
@property(nonatomic) NSNumber * minNumericValue;

/**
The minimum character length possible for a string value entered for an extensible attribute.
*/
@property(nonatomic) NSNumber * minStringLength;

/**
Regular expression used to process and validate an extensible attribute value that require special formatting, such as phone numbers.
*/
@property(nonatomic) NSString * regularExpression;

@end

