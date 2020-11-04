window.addEventListener('load', function() {

  // function buildBTN(){
  //   btn = 
  //   ``
  //   return btn;
  // }

  // function nextBTN(){
  //   const nextbutton = document.querySelector('.nextbutton')
  //   nextbutton.addEventListener("click", function(){
  //     $.ajax({
  //       url: "/normals/4/questions", //４という静的な数字を動的に変化させる
  //       type: "GET",
  //       // dataType: 'HTML',  データ送ってないのでいらないかも
  //     })
  //     .done(function(){
  //       console.log("yatta") //問題を全て描画し直す
  //     })
  //   });
  // }
  const answer = document.querySelector('.answer');
  const nextbutton = document.querySelector('.nextbutton');
  answer.addEventListener("click", function() {
    answer.innerHTML = '正解です！( ^ω^ )';
    answer.classList.add("red");
    nextbutton.classList.add("display");
    // let btn = buildBTN();
    // $('.Nbottom-content').append(btn);
    // // nextBTN()
  });
  const miss = document.querySelectorAll('.miss');
  for (let i = 0; i < 3; i = i + 1) {
    miss[i].addEventListener("click", function() {
      miss[i].innerHTML = 'ハズレ( ^ω^ )';
      miss[i].classList.add("blue");
    });
  }
});

// $(function() {
//   $('.answer').on('click', function() {
//     console.log('正解！')
//   })
// })
