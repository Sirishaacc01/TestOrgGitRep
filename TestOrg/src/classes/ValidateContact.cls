global  class ValidateContact implements database.Batchable<sobject> ,database.stateful,schedulable {
    global database.querylocator start(database.BatchableContext bc)
    {
     string query=' select id,name from contact';
         return database.getQueryLocator(query);

    }
    global void execute(SchedulableContext sc)
    {
        database.executeBatch(new ValidateContact());
    }
    global void execute(Database.BatchableContext bc,List<Lead> scope){
       
}
    global void finish(database.BatchableContext bc)
        
    {
       

}

}