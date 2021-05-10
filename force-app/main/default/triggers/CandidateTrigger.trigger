trigger CandidateTrigger on Candidate__c (after insert) {
    //If Candidate is new, after account created, send opportunity
    //on recruiting friends to company.
    
    List<Opportunity> oppList = new List<Opportunity>();
    
    for (Candidate__c a : Trigger.New) {
        
        Opportunity newOpportunity = new Opportunity();
        newOpportunity.Candidate__c = a.Id ;
        newOpportunity.Name=a.Name + ' Recruit-a-Friend';  
        newOpportunity.StageName ='Prospecting';
        newOpportunity.CloseDate = System.today().addMonths(1);
        newOpportunity.Description = 'Recruit a friend and get a bonus 500$ if they pass the training.';
        
        oppList.add(newOpportunity);         
        
    }
    insert oppList; 
}