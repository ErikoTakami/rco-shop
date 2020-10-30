// function searchAddressByZipcloud() {
//     console.log(OK)
// 	// 郵便番号の取得
//   var zipcode = document.getElementById('zipcode').value;
// 	// zipcloudAPIの呼び出し
//   var element = document.createElement('script');
// 	element.type = 'text/javascript';
// 	element.charset = 'utf-8';
// 	element.src = 'http://zipcloud.ibsnet.co.jp/api/search?zipcode='+zipcode+'&callback=writeAddressByZipcloud';
// 	document.body.appendChild(element);
// };

// function writeAddressByZipcloud(response) {
//   const element1 = document.getElementById('address-one');
//   const element2 = document.getElementById('address-two');
//   const element3 = document.getElementById('address-three');

// 	// エラー発生時は、アラートを出して終了
// 	if(response.status != 200) {
// 		alert(response.message);
// 		return false;
// 	}
// 	// 検索結果がなかった場合も、アラートを出して終了
// 	if(!response.results) {
// 		alert('該当する住所が見つかりませんでした');
// 		return false;
// 	}
//   // 住所文字列の作成
 
//   var address1 = response.results[0].address1;
//   var address2 = response.results[0].address2;
//   var address3 = response.results[0].address3;

//   element1.value = address1;
//   element2.value = address2;
//   element3.value = address3;
// };
// window.addEventListener('load', searchAddressByZipcloud())

// $(function(){
//   $('#zipcloud_search').on('click', () => {
//     $.ajax({
//       url: "http://zipcloud.ibsnet.co.jp/api/search?zipcode=" + $('#zipcode').val(),
//       dataType: 'jsonp',
//     }).done((data) => {
//       console.log(data)
//       if (data.results) { 
//         getData(data.results[0]);
//       } else {
//         alert('該当データが見つかりません');
//       }
//     }).fail((data) => {
//       alert('通信に失敗しました');
//     });
//   });

//   function getData(data) {
//     $('#address-one').val(data.address1);
//     $('#address-two').val(data.address2);
//     $('#address-three').val(data.address3);
//   }
// });