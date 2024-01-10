
document.addEventListener("DOMContentLoaded", function() {
    var checkbox = document.getElementById('checkbox');

    checkbox.addEventListener('change', function() {
        if (checkbox.checked) {
            // 체크박스가 체크된 경우, 쿠키를 설정하고 30초 동안 유지
            var now = new Date();
            var expireTime = new Date(now.getTime() + 30 * 1000); // 30초 후의 시간
            document.cookie = "hideAd=true; expires=" + expireTime.toUTCString() + "; path=/"; // 쿠키 설정
        } else {
            // 체크박스가 해제된 경우, 쿠키 삭제 (만료 시간을 이전으로 설정하여 삭제)
            document.cookie = "hideAd=true; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
        }
    });
    
    var cookies = document.cookie.split(';');
    for (var i = 0; i < cookies.length; i++) {
        var cookie = cookies[i].trim();
        if (cookie.startsWith("hideAd=")) {
            var hideAdValue = cookie.substring("hideAd=".length);
            if (hideAdValue === "true") {
                // 쿠키가 설정되어 광고를 보이지 않아야 할 경우
                var adPopup = window.open('', '_self');
                adPopup.close();
            }
            break;
        }
    }
});

function openPopup() {
	window.open('./addPop.jsp', '_blank', 'width=420,height=290,top=200,left=500');
}


