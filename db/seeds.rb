# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(name: 'Tom', photo: 'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80', bio: 'Teacher from Mexico.',
                         posts_counter: 0)
second_user = User.create(name: 'Lilly', photo: 'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                          bio: 'Teacher from Poland.', posts_counter: 0)

first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0,
                         likes_counter: 0)
second_post = Post.create(author: first_user, title: 'second not last', text: 'This is my second post',
                          comments_counter: 0, likes_counter: 0)
third_post = Post.create(author: first_user, title: 'third is the best', text: 'This is my third post',
                         comments_counter: 0, likes_counter: 0)
forth_post = Post.create(author: second_user, title: 'Hello', text: 'This is my first post', comments_counter: 0,
                         likes_counter: 0)
fifth_post = Post.create(author: second_user, title: 'socializing', text: 'This platform is cool',
                         comments_counter: 0, likes_counter: 0)

Comment.create(post: first_post, author: second_user, text: 'Hi Tom!')
Comment.create(post: first_post, author: second_user, text: 'Nice to see you here')
Comment.create(post: forth_post, author: first_user, text: 'Hi Lilly!')
Comment.create(post: fifth_post, author: first_user, text: 'Same here')
Comment.create(post: fifth_post, author: second_user, text: 'so you enjoy your time here')
Comment.create(post: fifth_post, author: first_user, text: 'Same here')

Like.create(post: first_post, author: second_user)

