# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create!(author: '名無しさん', body: 'これは本文です')
Post.create!(author: '豊田サリー', body: 'テクマクマヤコンテクマクマヤコン')
Post.create!(author: 'ガンジー', body: "非暴力\n非服従\n言葉は要らない")
