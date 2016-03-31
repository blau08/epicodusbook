//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require jsapi
//= require chartkick

var hideNewForm = function () {
  $("#enter-comment-link").show();
  $("#enter-comment-form").remove();
  $("#comment-cancel-button").remove();
}
