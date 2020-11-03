var initPostcodeJp = function() {
  const key = process.env.POSTCODE_API_KEY
  var postCodeJp = new postcodejp.address.AutoComplementService(key);
  var zipElement = document.getElementById('sample1_zip');
  postCodeJp.setZipTextbox(zipElement);
  postCodeJp.add(new postcodejp.address.StateSelectbox('stateSelectBox').byText());
  postCodeJp.add(new postcodejp.address.TownTextbox('sample1_address2'));
  postCodeJp.add(new postcodejp.address.StreetTextbox('sample1_address3'));
  postCodeJp.observe();
};
if(window.addEventListener){
window.addEventListener('load', initPostcodeJp)
}else{
window.attachEvent('onload', initPostcodeJp)
}