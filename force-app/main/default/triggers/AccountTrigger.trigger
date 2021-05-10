trigger AccountTrigger on Account (before insert, before update) {
    //before delete, after insert, after update, after delete, after undelete
    // if match checkbox is selected, insert billing address into shipping address.
        
	for(Account a : Trigger.New){
            
        if (a.Match_Billing_Address__c == True){
            a.ShippingPostalCode = a.BillingPostalCode;
            a.ShippingCity = a.BillingCity;
            a.ShippingStreet = a.BillingStreet;
            a.ShippingState = a.BillingState;
            a.ShippingCountry = a.BillingCountry;               
        }
	}
}