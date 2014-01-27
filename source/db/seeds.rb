# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



### Customers 

  c1 = Customer.create(:first_name => 'Dean' , :last_name => 'Martin' , :email => 'dean.martin@culini.com')
  c2 = Customer.create(:first_name => 'Buddy' , :last_name => 'Rich' , :email => 'buddy.rich@culini.com')
  c3 = Customer.create(:first_name => 'Miles' , :last_name => 'Davis' , :email => 'miles.davis@culini.com')
  c4 = Customer.create(:first_name => 'Billie' , :last_name => 'Holiday' , :email => 'billie.holiday@culini.com')




#### Successful charge 

  c1.charges.create(:amount => '8000', :paid => true , :refunded => false )
  c1.charges.create(:amount => '9000', :paid => true , :refunded => false )
  c1.charges.create(:amount => '7400', :paid => true , :refunded => false )
  c1.charges.create(:amount => '8500', :paid => true , :refunded => false )
  c1.charges.create(:amount => '9500', :paid => true , :refunded => false )


  c2.charges.create(:amount => '6500', :paid => true , :refunded => false )
  c2.charges.create(:amount => '7500', :paid => true , :refunded => false )
  c2.charges.create(:amount => '8500', :paid => true , :refunded => false )


  c3.charges.create(:amount => '1000', :paid => true , :refunded => false )
  c4.charges.create(:amount => '2000', :paid => true , :refunded => false ) 


#### Failed Charges 

  c3.charges.create(:amount => '1500', :paid => false , :refunded => false )
  c3.charges.create(:amount => '7500', :paid => false , :refunded => false )
  c3.charges.create(:amount => '3800', :paid => false , :refunded => false )
  c4.charges.create(:amount => '4900', :paid => false , :refunded => false )
  c4.charges.create(:amount => '5900', :paid => false , :refunded => false )


### Disputed Charges 

 c1.charges.create(:amount => '6900', :paid => false , :refunded => true)
 c1.charges.create(:amount => '7900', :paid => false , :refunded => true )
 c1.charges.create(:amount => '7800', :paid => false , :refunded => true )

 c2.charges.create(:amount => '3200', :paid => false , :refunded => true )
 c2.charges.create(:amount => '4500', :paid => false , :refunded => true )






