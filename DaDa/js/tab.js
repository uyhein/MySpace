function tabs(tabTit,on,tabCon,currentCol){
	$(tabCon).each(function(){
	  $(this).children().eq(currentCol).show();
	  });
	$(tabTit).each(function(){
	  $(this).children().eq(currentCol).addClass(on);
	  });
     $(tabTit).children().click(function(){
        $(this).addClass(on).siblings().removeClass(on);
         var index = $(tabTit).children().index(this);
         $(tabCon).children().eq(index).show().siblings().hide();
    });
}
