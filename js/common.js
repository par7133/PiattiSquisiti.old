
var burgerMenuVisible=false;

function ResetMenu() {
  $(".burgermenu").each(function(){
    $(this).hide();
    $(this).css("z-index", "99992");
  });
}

function popupMenu1() {
  if (!burgerMenuVisible) {
    menuRect = document.getElementsByClassName("menubm")[0].getBoundingClientRect(); 
    $("#burgerMenu1").show();
    $("#burgerMenu1").css("z-index", "99999");
    $("#burgerMenu1").css("top", parseInt(menuRect.top+33));
    $("#burgerMenu1").css("left", parseInt(menuRect.left-90));
  } else {
    ResetMenu();
  }
  burgerMenuVisible=!burgerMenuVisible;
} 

function popupMenu2() {
  if (!burgerMenuVisible) {
    menuRect = document.getElementsByClassName("menubm")[1].getBoundingClientRect(); 
    $("#burgerMenu2").show();
    $("#burgerMenu2").css("z-index", "99999");
    $("#burgerMenu2").css("top", parseInt(menuRect.top+33));
    $("#burgerMenu2").css("left", parseInt(menuRect.left-70));
  } else {
    ResetMenu();
  }
  burgerMenuVisible=!burgerMenuVisible;
} 

function popupMenu3() {
  if (!burgerMenuVisible) {
    menuRect = document.getElementsByClassName("menubm")[1].getBoundingClientRect(); 
    $("#burgerMenu3").show();
    $("#burgerMenu3").css("z-index", "99999");
    $("#burgerMenu3").css("top", parseInt(menuRect.top+33));
    $("#burgerMenu3").css("left", parseInt(menuRect.left+10));
  } else {
    ResetMenu();
  }
  burgerMenuVisible=!burgerMenuVisible;
} 

function hideMenu() {
  $("#burgerMenu").hide();
  burgerMenuVisible=false;
} 

function showPiglets() {
  pigi = 1;
  $(".icon").each(function() {
    if (pigi<=10) {
      spigi=""+pigi;
    } else {
      spigi=""+(pigi-10);
    }
    if (spigi.length == 1 ) {
      spigi="0"+spigi;
    }
    if ((pigi % 2) > 0 ) {
      $(this).get(0).align = "left";
      document.getElementsByClassName("recipe")[pigi-1].style.marginLeft = "140px";
      document.getElementsByClassName("recipe")[pigi-1].style.marginRight = "";
    } else {
      $(this).get(0).align = "right";
      document.getElementsByClassName("recipe")[pigi-1].style.marginRight = "140px";
      document.getElementsByClassName("recipe")[pigi-1].style.marginLeft = "";
    }
    $(this).get(0).src = "/res/piglet" + spigi + ".png";
    pigi++;
  });
}
