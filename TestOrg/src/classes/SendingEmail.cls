public class SendingEmail {
    public void sendEmail()
    {
        Messaging.SingleEmailMessage email=new messaging.SingleEmailMessage();
        List<string> toaddr=new list<string>{'sirishachowdary.karuturi@gmail.com','abc@xyz.com'};
            email.setToAddresses(toaddr);
        email.setsubject('Testing email via apex');
        email.setPlainTextBody('My first email via paex');
        email.setSenderDisplayName('GVIPL');
        list<messaging.SingleEmailMessage> msglist=new list<messaging.SingleEmailMessage>();
        msglist.add(email);
       // email.setTemplateId(param1)
            
        messaging.sendEmail(msglist);
        
    }

}