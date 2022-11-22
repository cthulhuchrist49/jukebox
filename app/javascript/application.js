
import Rails from "@rails/ujs";
import "@hotwired/turbo-rails"
import * as ActiveStorage from "@rails/activestorage"

import "controllers"


Rails.start()
ActiveStorage.start()



function dooby(thingy){
Rails.ajax({
    url: "/album/"+thingy,
    type: "GET",
    success: function (data) {
        console.log(data);
        document.getElementById("hi").innerHTML = data.body.innerHTML
        ;

    }
})
}


window.dooby = dooby;
