public with sharing class ProjectDataController {
    @AuraEnabled(cacheable = true)
    public static List<Project__c> getProjectData() {
        List<Project__c> projects = new List<Project__c>();

        try{
             projects = [ SELECT Name, Project_Manager__c, Start_Date__c, End_Date__c, Status__c, Budget__c, Priority__c FROM Project__c ];
              
        }
catch(exception e)
{
System.debug('error' +e.getMessage());
}
return projects;
    }
}