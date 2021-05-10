@isTest
public class CandidateTriggerTest {
    
    @isTest static void CandidateTrigger(){
        
        Candidate__c canTest = new Candidate__c(Name ='Test E. Name', First_Name__c = 'Test', 
                                                Last_Name__c = 'Name', Phone_Number__c = '4074850369', 
                                                Zipcode__c = '85283');
        insert canTest;
        
        Opportunity oppTest = new Opportunity(Candidate__c = canTest.Id, Name=canTest.Name + ' Recruit-a-Friend',
                                              StageName ='Prospecting',CloseDate = System.today().addMonths(1),
                                              Description = 'Test Message');
            
            
        insert oppTest;       
         
		Test.startTest();
        

		Test.stopTest();
            
            }
    
}