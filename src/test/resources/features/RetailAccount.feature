@RetailAccountFeature
Feature: Retail Account Page

Background:
Given User is on retail website
When User click on Sign in option
And User enter email 'JohnAdams@gmail.com' and password 'Afghanistan@1234'
And User click on login button
And User should be logged in into Account

@updateProfile
Scenario: Verify User can update Profile Information
When User click on Account option
And User update Name 'Massoouda' and Phone '279-222-7478'
And User click on Update button
Then user profile information should be updated

@AddPaymentMethod
Scenario: Verify User can add a payment method
When User click on Account option
And User click on Add a payment method link
And User fill Debit or credit card information
| cardNumber 				| nameOnCard 		| expirationMonth | expirationYear | securityCode |
| 4231231234567878  | MassoudaAfzali | 12							| 2025 					 | 327 |
And User click on Add your card button


@AccountPaymentUpdate
Scenario: Verify User can edit Debit or Credit card
When User click on Account option
And User click on Edit option of card section
And user edit information with below data
| cardNumber			 | nameOnCard   | expirationMonth | expirationYear | securityCode |
| 9223334445556659 | Masooda			| 12							 | 2024					 | 440				  |
And user click on Update Your Card button


#@RemoveAccountPayment
#Scenario: Verify User can remove Debit or Credit card
#When User click on Account option
#And User click on remove option of card section
#Then payment details should be removed

@addAddress
Scenario: Verify User can add an Address
When User click on Account option
And User click on Add address option
And user fill new address form with below information
| country 			| fullName | phoneNumber | streetAddress 				| apt | city 				| state | zipCode |
| United States | Massoouda | 279-223-7418| 738 East Ripley St		| 715 | Alexandria 	| Virginia    | 22309 |
And User click Add Your Address button
Then a message should be displayed ‘Address Added Successfully’

@AddressEdit
Scenario: Verify User can edit an Address added on account
When User click on Account option
And User click on edit address option
And user fill new address form with below information
| country | fullName | phoneNumber | streetAddress 				 | apt | city       | state | zipCode |
| United States | Afzali    | 278-222-1689 | 842 North Ripley St	 | 739 | Sacarmanto | California    | 93807 |
And User click update Your Address button
Then a message should be displayed ‘Address Updated Successfully’

@RemoveAddress
Scenario: Verify User can remove Address from Account
When User click on Account option
And User click on remove option of Address section

