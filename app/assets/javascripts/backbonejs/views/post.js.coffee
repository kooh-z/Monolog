# 投稿一覧
@PostsView = Backbone.View.extend
  el: '#posts' #DOM要素を割り当てる

  initialize: ->
    @render() #描画する
    @listenTo(@collection, 'add', @addNew)  #コレクションに追加された場合のリスナー登録

  addNew: (post) ->
    postView = new PostView(model: post)
    @$el.append(postView.render().el)

  render: ->
    @collection.each (post, i) =>
      postView = new PostView(model: post, index: i)
      @$el.append(postView.render().el)
    @

# 投稿
@PostView = Backbone.View.extend
  tagName: 'div'  #ラップするタグ名
  className: 'post'
  template: _.template($('#post-template').html())
  initialize: (@options) ->
  render: ->
    template = @template(post: @model.toJSON(), index: @options.index)
    @$el.html(template)
    @
