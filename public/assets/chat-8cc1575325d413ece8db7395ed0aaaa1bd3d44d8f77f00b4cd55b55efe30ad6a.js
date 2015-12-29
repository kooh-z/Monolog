(function() {
  var bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  this.ChatClass = (function() {
    function ChatClass(url, useWebsocket) {
      this.receiveMessage = bind(this.receiveMessage, this);
      this.sendMessage = bind(this.sendMessage, this);
      this.bindEvents = bind(this.bindEvents, this);
      this.dispatcher = new WebSocketRails(url, useWebsocket);
      console.log(url);
      this.bindEvents();
    }

    ChatClass.prototype.bindEvents = function() {
      $('#send').on('click', this.sendMessage);
      return this.dispatcher.bind('new_message', this.receiveMessage);
    };

    ChatClass.prototype.sendMessage = function(event) {
      var msg_body, user_name;
      user_name = $('#username').text();
      msg_body = $('#msgbody').val();
      this.dispatcher.trigger('new_message', {
        name: user_name,
        body: msg_body
      });
      return $('#msgbody').val('');
    };

    ChatClass.prototype.receiveMessage = function(message) {
      console.log(message);
      return $('#chat').append(message.name + "「" + message.body + "」<br/>");
    };

    return ChatClass;

  })();

  $(function() {
    return window.chatClass = new ChatClass($('#chat').data('uri'), true);
  });

}).call(this);
