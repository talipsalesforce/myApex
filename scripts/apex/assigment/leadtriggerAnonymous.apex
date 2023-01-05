List<Lead> newLeadList = new List<Lead>{
new lead (lastName = 'Gülendam', company = 'ABC Company',  description = 'Welcome...'),
new lead (lastName = 'Gül', company = 'ABC Company', description = 'Welcome...'),
new lead (lastName = 'Endam', company = 'ABC Company', description = 'Welcome...'), 
new lead (lastName = 'Rose', company = 'ABC Company', description = 'Welcome...'),
new lead (lastName = 'Rosery', company = 'ABC Company', description = 'Welcome...')};
insert newLeadList; 

List<lead> updateLead = [select id, lastName from lead order by createdDate desc limit 1];
for (lead eachLead : updateLead) {
    eachLead.description = 'Field Update from Anonymous...';  
}
update updateLead;


