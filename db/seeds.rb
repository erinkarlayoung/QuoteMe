# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
	{fname: 'Erin', lname: 'Young', email: 'erin@me.com', password: '12345678'},
	{fname: 'Anonymous', lname: 'User', email: 'anon@me.com', password: 'password'},
	{fname: 'John Q', lname: 'Public', email: 'john@me.com', password: 'narcissism'},
	{fname: 'Joe', lname: 'Everyman', email: 'joe@me.com', password:'negitivity'},
	{fname: 'HereTo', lname: 'TrollEveryond', email: 'troll@me.com', password: 'trolling'}
	])

Post.create([          
	{user_id: 2, title: 'This song is so deep', body: '(Probably not very deep song lyrics)Lorem ipsum dolor sit amet, sed errem graece persius no, libris altera saperet sit ut. Est id delicata erroribus ratoribus pro ut. Nemore repudiandae eu sit, at illum atqui tractatos vel'},
	{user_id: 1, title: 'Kerouac', body: 'I like too many things and get all confused and hung-up running from one falling star to another till I drop. This is the night, what it does to you. I had nothing to offer anybody except my own confusion.- Jack Kerouac, On The Road'},          
	{user_id: 4, title: 'I like this one...', body: 'Do not mind anything that anyone tells you about anyone else. Judge everyone and everything for yourself.- Henry James'},
	{user_id: 5, title: 'You know who has good quotes?', body: 'Your mom!'},
	{user_id: 3, title: 'Song quote', body: 'This is a quote. I am not being terribly creative right now'}
	])


Comment.create([
	{user_id: 2, post_id: 2, body: 'Random Comment.'},
	{user_id: 3, post_id: 2, body: 'What chapter?'},
	{user_id: 5, post_id: 4, body: 'Trolling'},
	{user_id: 2, post_id: 3, body: 'Source?'},
	])