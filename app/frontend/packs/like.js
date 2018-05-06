import axios from 'axios';

add_like_events();

function add_like_events() {
  for (var element of document.getElementsByClassName("not-liked")) {
    element.removeEventListener("click", post_unlike);
    element.addEventListener("click", post_like, false);
  }
  for (var element of document.getElementsByClassName("liked")) {
    element.removeEventListener("click", post_like);
    element.addEventListener("click", post_unlike, false);
  }

}

// とりあえずajaxなげるだけ　エラーは受け取らない
function post_like(e) {
  var id = e.target.getAttribute('data-manner-id');
  axios.defaults.headers['X-CSRF-TOKEN'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
  axios.post('/favorites', {
    manner_id: id
  });
  e.target.setAttribute('class', 'far fa-heart liked');
  document.getElementsByClassName('manner-id-' + id)[0].innerHTML = parseInt(document.getElementsByClassName('manner-id-' + id)[0].innerHTML) + 1
  add_like_events();
}

function post_unlike(e) {
  var id = e.currentTarget.getAttribute('data-manner-id');
  axios.defaults.headers['X-CSRF-TOKEN'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
  axios.delete('/favorites/' + id, {});
  e.target.setAttribute('class', 'far fa-heart not-liked');
  document.getElementsByClassName('manner-id-' + id)[0].innerHTML = parseInt(document.getElementsByClassName('manner-id-' + id)[0].innerHTML) - 1
  add_like_events();
}
