jQuery ->
  posts = new Posts()
  posts.fetch()
  new PostsView(collection: posts)
