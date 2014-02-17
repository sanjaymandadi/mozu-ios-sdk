
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
#import "MOZUAuthTicket.h"
#import "MOZUStream.h"
#import "MOZUFileMetadata.h"
#import "MOZUAppDevApplication.h"
#import "MOZUPackageCollection.h"
#import "MOZUApplicationVersion.h"
#import "MOZUFolderMetadata.h"
#import "MOZURenameInfo.h"
#import "MOZUAppDevPackage.h"
#import "MOZUApplicationCollection.h"


@interface MOZUApplicationVersionClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the list of applications associated with the developer account scoped to the user claim specified in the request.
*/

+(MOZUClient*)clientForGetAllApplicationsOperation userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the details of the application specified in the request. The application specified in the request must be associated with the developer account scoped to the user claim specified in the request header, otherwise the operation returns an error.
@param applicationId Unique identifier of the application.
*/

+(MOZUClient*)clientForGetApplicationOperationWithWithApplicationId:(NSNumber*)applicationId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the details of a specific version of an application associated with the developer account scoped to the user claim specified in the request.
@param applicationVersionId Unique identifier of the application version. Application version IDs are unique across all applications associated with a developer account.
*/

+(MOZUClient*)clientForGetApplicationVersionOperationWithWithApplicationVersionId:(NSInteger)applicationVersionId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves a list of the package definitions created for an application version, including all development packages and release packages. The application must be associated with the developer account scoped to the user claim specified in the request.
@param applicationVersionId Unique identifier of the application version. Application version IDs are unique across all applications associated with a developer account.
*/

+(MOZUClient*)clientForGetPackagesOperationWithWithApplicationVersionId:(NSInteger)applicationVersionId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the details of a package definition associated with an application version. The application ust be associated with the developer account scoped to the user claim specified in the request.
@param applicationVersionId Unique identifier of the application version associated with the package. Application version IDs are unique across all applications associated with the developer account.
@param packageId Unique identifier of the package to retrieve.
*/

+(MOZUClient*)clientForGetPackageOperationWithWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the metadata for items in a package associated with an application version, including a list of all files and subfolders. The application must be associated with the developer account scoped to the user claim specified in the request.
@param applicationVersionId Unique identifier of the application version. Application version IDs are unique across all applications associated with a developer account.
@param packageId Unique identifier of the package.
*/

+(MOZUClient*)clientForGetPackageItemsMetadataOperationWithWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the metadata of a file in a package for an application version. The application must be associated with the developer account scoped to the user claim specified in the request.
@param applicationVersionId Unique identifier of the application version. Application version IDs are unique across all applications associated with a developer account.
@param itempath Complete file directory location and name of the item in the package to retrieve metadata.
@param packageId Unique identifier of the package.
*/

+(MOZUClient*)clientForGetPackageItemMetadataOperationWithWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId itempath:(NSString*)itempath userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the package of files and sends them to a compressed (zipped) archive.
@param applicationVersionId The unique identifier of the application version.
@param packageId The unique identifier of the package to zip.
*/

+(MOZUClient*)clientForGetPackageFilesZipOperationWithWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new development or release package for the application version specified in the request.
@param package Properties of the development or release package to define.
@param applicationVersionId Unique identifier of the application version. Application version IDs are unique across all applications associated with the developer account.
*/

+(MOZUClient*)clientForAddPackageOperationWithWithPackage:(MOZUAppDevPackage*)package applicationVersionId:(NSInteger)applicationVersionId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Update the file name or file path of a development package or release package.
@param renameInfo The file name or path to rename the package.
@param applicationVersionId The unique identifier of the theme or application version.
@param packageId The unique identifier of the development or release package.
*/

+(MOZUClient*)clientForChangePackageFileNameOrPathOperationWithWithRenameInfo:(MOZURenameInfo*)renameInfo applicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Uploads a file to a defined package for an application version in the file location specified in the request.
@param stream The contents of the package file to upload, which requires a content-type value of "application/octet-stream" in the request header.
@param applicationVersionId Unique identifier of the application version. Application version IDs are unique across all applications associated with a developer account.
@param filepath The file location to which to add the package file.
@param packageId Unique identifier of the package.
*/

+(MOZUClient*)clientForAddPackageFileOperationWithWithStream:(NSInputStream*)stream applicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId filepath:(NSString*)filepath userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates one or more properties of a file in a package associated with an application version.
@param stream The contents of the package file to update, which requires a content-type value of "application/octet-stream" in the request header.
@param applicationVersionId Unique identifier of the application version. Application version IDs are unique across all applications associated with a developer account.
@param filepath The location path and name that identifies the package file to update.
@param packageId The unique identifier of the package.
*/

+(MOZUClient*)clientForUpdatePackageFileOperationWithWithStream:(NSInputStream*)stream applicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId filepath:(NSString*)filepath userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the specified file from a package associated with an application version.
@param applicationVersionId Unique identifier of the application version.
@param filepath The file path and name of the file location to delete from the package.
@param packageId Unique identifier of the package.
*/

+(MOZUClient*)clientForDeletePackageFileOperationWithWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId filepath:(NSString*)filepath userClaims:(MOZUUserAuthTicket*)userClaims;



@end