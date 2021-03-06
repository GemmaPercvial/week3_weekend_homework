require("pry")
require_relative("../models/customer")
require_relative("../models/film")
require_relative("../models/ticket")

film1 = Film.new('title' => 'Incredibles 2', 'price' => '9')
film2 = Film.new('title' => 'Oceans 8', 'price' => '6')
film1.save()
film2.save()

customer1 = Customer.new('name' => 'Tom', 'funds' => '100')
customer2 = Customer.new('name' => 'Harry', 'funds' => '50')
customer1.save()
customer2.save()

ticket1 = Ticket.new('customer_id' => customer1.id, 'film_id' => film1.id)
ticket2 = Ticket.new('customer_id' => customer2.id, 'film_id' => film2.id)
ticket1.save()
ticket2.save()

customer1.buy_ticket()
p customer1
