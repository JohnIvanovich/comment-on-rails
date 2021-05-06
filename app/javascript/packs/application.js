// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import dayjs from "dayjs"
import "dayjs/locale/ru"

dayjs.locale("ru")

Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener('DOMContentLoaded', function() {
  document.querySelectorAll('time').forEach(function(tm) {
    tm.innerHTML = dayjs(tm.getAttribute('datetime')).format('MM-DD-YYYY HH:mm');
  });
});
