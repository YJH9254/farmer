const btn1 = document.getElementById('btn1');

console.log(opener);

document.addEventListener('DOMContentLoaded', function(){
	const btn1 = document.getElementById('btn1');
	
	btn1.click();
});

btn1.addEventListener('click', (e) => {
	open('./addPop.jsp', '_blank', 'width=400,height=300,top=100,left=100');
});