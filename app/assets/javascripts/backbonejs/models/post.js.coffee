@Post = Backbone.Model.extend
  urlRoot: '/posts'

@Posts = Backbone.Collection.extend
  model: Post
  url: '/posts'
