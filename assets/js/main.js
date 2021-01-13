(function () {
    "use strict";
    var menuId;
    function init () {
      menuId = document.getElementById("menu");
      document.addEventListener("scroll",scrollMenu,false);
    }
    function scrollMenu () {
      if (document.documentElement.scrollTop > 100) {
        menuId.classList.add("scroll");
      }
      else {
        menuId.classList.remove("scroll");
      }
    }
    document.addEventListener("DOMContentLoaded",init,false);
  })();
