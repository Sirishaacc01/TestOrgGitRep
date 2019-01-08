global class AccountUpdateEmailHandler implements Messaging.InboundEmailHandler {
  global Messaging.InboundEmailResult handleInboundEmail(
  Messaging.InboundEmail email,
  Messaging.InboundEnvelope envelope)
  {
    String subject = email.subject;
      
  //  Pattern idPattern = Pattern.compile('001[A-Za-z0-9]{12}');
  //  Matcher matcher = idPattern.matcher(subject);
   // if (!matcher.find()) System.assert(false, 'No Account Id in subject!');

    Account account = [SELECT Name FROM Account WHERE Id = :subject];
    account.name = 'Update from gmail';
    update account;

    Messaging.InboundEmailresult result = new Messaging.InboundEmailResult();
    result.message = 'Account Name is now ' + account.Name;
    return result;
  }
}