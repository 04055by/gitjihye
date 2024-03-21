document.addEventListener("DOMContentLoaded", function() {
  var acc = document.querySelectorAll(".accordion");

  acc.forEach(function(item) {
    item.addEventListener("click", function(event) {
      event.preventDefault(); // 기본 동작 방지
      event.stopPropagation(); // 이벤트 버블링 방지

      var panel = this.nextElementSibling;

      // 패널이 열려있는지 확인 후 토글
      if (panel.style.maxHeight) {
        panel.style.maxHeight = null;
      } else {
        closeAllPanels(); // 다른 패널 닫기
        this.classList.add("active"); // 활성화 클래스 추가
        panel.style.maxHeight = panel.scrollHeight + "px";
      }
    });
  });

  // 다른 패널 닫기
  function closeAllPanels() {
    acc.forEach(function(item) {
      item.classList.remove("active");
      var panel = item.nextElementSibling;
      panel.style.maxHeight = null;
    });
  }

  // 체크박스 클릭시 이벤트 버블링 방지
  var checkboxes = document.querySelectorAll('input[type="checkbox"]');
  checkboxes.forEach(function(checkbox) {
    checkbox.addEventListener("click", function(event) {
      event.stopPropagation(); // 이벤트 버블링 방지
    });
  });
});