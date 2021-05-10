@isTest
public class AccountTriggerTest {
    
    @isTest static void AccountTrigger(){
        
        Account acct = new Account(Name = 'Test Name', Match_Billing_Address__c = True);

            
        insert acct;
        
        
        
        Test.startTest();
        
        
        
        Test.stopTest();
        
        
    }
    
    
}