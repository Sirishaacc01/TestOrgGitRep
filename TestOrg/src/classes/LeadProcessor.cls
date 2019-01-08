global class LeadProcessor  implements database.Batchable <sobject>{
    
global database.QueryLocator start(database.BatchableContext bc)
{
    return database.getQueryLocator([select leadsource from lead]);
}
    global void execute (database.BatchableContext bc,List<Lead> records)
    {
        for(Lead l:records)
        {
          l.LeadSource='Dreamforce';
           
        }
        update records;
    }
    global void finish(database.BatchableContext bc)
    {
        
    }
    
}