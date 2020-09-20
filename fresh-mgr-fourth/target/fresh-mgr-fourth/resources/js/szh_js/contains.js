$(document).ready(function(){
	
	$(".bd11").show();
	$(".bd12").hide();
	$(".bd13").hide();
	
	 $(".li1").bind("click",li1=function(){
		 
		 $(".tabs li div.acti").removeClass("acti");
		 $(".tabs li.active").removeClass("active");
		 
		 $(".li1 div").addClass("acti").blur();
		 $(".li1").addClass("active").blur();
		 
		$(".bd11").show();
		$(".bd12").hide();
		$(".bd13").hide();
		
	})
	
	$(".li2").bind("click",li2=function(){
		
		$(".tabs li div.acti").removeClass("acti");
		$(".tabs li.active").removeClass("active");
		
		$(".li2 div").addClass("acti").blur();
		$(".li2").addClass("active").blur();
		
		$(".bd11").hide();
		$(".bd12").show();
		$(".bd13").hide();
		
	})
	
	$(".li3").bind("click",li3=function(){
		
		$(".tabs li div.acti").removeClass("acti");
		$(".tabs li.active").removeClass("active");
		
		$(".li3 div").addClass("acti").blur();
		$(".li3").addClass("active").blur();
		
		$(".bd11").hide();
		$(".bd12").hide();
		$(".bd13").show();
		
		
	})
	 
})
/* 	 $(".li1").bind("click",bg1=function(){
	        $(".bd1").css("background","#26a6e3");
	    }).bind("click",content1=function(){
	        $(".bd11").show();
	        $(".bd12").hide();
	        $(".bd13").hide();
	    });
	    $(".li2").bind("click",bg2=function(){
	        $(".bd2").css("background","#ff9400");
	    }).bind("click",content2=function(){
	        $(".bd11").hide();
	        $(".bd12").show();
	        $(".bd13").hide();
	    });
		$(".li3").bind("click",bg3=function(){
		    $(".bd3").css("background","blue");
		}).bind("click",content3=function(){
		    $(".bd11").hide();
		    $(".bd12").hide();
		    $(".bd13").show();
		});
	
	
 }) 
	 */



//切换菜单
// $('.hd li').click(function(){
//     $('.bd1').css('display','none')
//     $('.hd li').removeClass('active')
//     $('.hd1').removeClass('acti')
//     $('.bd1 ').eq($(this).index()).css('display','block')
//     $('.hd li').eq($(this).index()).addClass('active')
//     $('.hd1').eq($(this).index()).addClass('acti')

// })
