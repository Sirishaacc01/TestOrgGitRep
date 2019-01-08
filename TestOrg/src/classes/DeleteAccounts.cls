global  class DeleteAccounts implements database.Batchable<sobject>
{
    global database.QueryLocator start(Database.BatchableContext bc)
    {
        string query='select id,name form account where createddate=today';
        return database.getQueryLocator(query);
    }
global void execute(Database.BatchableContext bc,List<account> scope)
{
    list<account> delacc=new list<account>();
    for(account a:scope)
    {
       delacc.add(a);
    }
    delete delacc;
}
    global void finish(database.BatchableContext bc)
        
    {
        
    }
}