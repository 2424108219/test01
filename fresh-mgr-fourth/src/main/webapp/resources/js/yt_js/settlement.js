//顶部导航
var navarr = ['20px', '130px', '240px', '350px', '460px']
$('.headr-nav li').mouseover(function() {
	$('.headr-nav li a').eq($(this).index('li')).css('color', '#4AB344')
	$('.spbottom:eq(0)').css('left', navarr[$(this).index("")])
}).mouseout(function() {
	$('.headr-nav li a').eq($(this).index('li')).css('color', '')
	$('.spbottom:eq(0)').css('left', '350px')
})

$('.headr-right:eq(0)').mouseover(function() {
	$(this).css('overflow', 'visible')
}).mouseout(function() {
	$(this).css('overflow', 'hidden')
})



$('.rcr-top').mousemove(function() {
	$('.rcr-top').eq($(this).index('.rcr-top')).css('margin-left', '0')

}).mouseout(function() {
	$('.rcr-top').eq($(this).index('.rcr-top')).css('margin-left', '10px')

})



/*关闭窗口*/
function close_plan() {
	window.close();
}

function collection() {
	var flag = confirm("移入收藏后，将不再购物车显示，是否继续操作?");
	if (flag == true) {
		alert("移入收藏成功!");
	}
}

function minus(num) {
	var prices = document.getElementsByName("price")[num].value;
	var count = parseInt(document.getElementsByName("amount")[num].value) - 1;
	if (count < 1) {
		alert("不能再减了，再减就没有啦！");
	} else {
		document.getElementsByName("amount")[num].value = count;
		var totals = parseFloat(prices * count);
		document.getElementById("price" + num).innerHTML = "¥" + totals;
		total();
	}
}
$('.payItemBox2').click(function() { //点击标签
	if ($('.zfb').is(':hidden')) { //如果当前隐藏
		$('.zfb').show(); //那么就显示div
	} else { //否则
		$('.zfb').hide(); //就隐藏div
	}
})
// $('.payItemBox2').click(function() {
// 	$('.zfb').toggle();
// });

// $(".payItemBox1").eq(0).click(function() {
// 	$(this).css("border", "1px solid #37AB40");
// })

function plus(num) {
	var prices = document.getElementsByName("price")[num].value;
	var count = parseInt(document.getElementsByName("amount")[num].value) + 1;
	document.getElementsByName("amount")[num].value = count;
	var totals = parseFloat(prices * count);
	document.getElementById("price" + num).innerHTML = "¥" + totals;
	total();
}

function total() {
	var prices = document.getElementsByName("price");
	var count = document.getElementsByName("amount");
	var sum = 0;
	for (var i = 0; i < prices.length; i++) {
		sum += prices[i].value * count[i].value;
	}
	document.getElementById("totalPrice").getElementsByTagName("span")[0].innerHTML = "¥" + sum;
}
total();
