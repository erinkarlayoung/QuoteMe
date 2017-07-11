# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
	{fname: 'Erin', lname: 'Young', email: 'erinkarlayoung@gmail.com', password: '12345678'}
	{fname: 'Danny', lname: 'Devito', email: 'danny@gevito.com', password: 'password'}
	{fname: 'LeBron', lname: 'James', email: 'lebron@me.com', password: 'narcissism'}
	])

Post.create([
	{user_id:_ , title: 'My Life is Falling Apart', body: 'life is a bleak abyss and I am being enveloped by the void.'}])

Comments.create([
	{user_id: 2, post_id: 1, body: 'Yeah, you are a shitshow.'}
	{user_id: 3, post_id: 1, body: 'Better than having your teammate hit it with your mom'}
	{user_id: 1, post_id: 1, body: 'Would you rather it have been Kevin Durant? He scores on you, so why not your mom?'}
	])