var initPostcodeJp = function() {
  var autoComplement = new postcodejp.address.AutoComplementService('szBuijQ2pyk2xjfumyoUR6oTrPYamI272Z3IE6Z');
  var zipElement = document.getElementById('sample1_zip');
  autoComplement.setZipTextbox(zipElement);
  autoComplement.add(new postcodejp.address.StateSelectbox('stateSelectBox').byText());
  autoComplement.add(new postcodejp.address.TownTextbox('sample1_address2'));
  autoComplement.add(new postcodejp.address.StreetTextbox('sample1_address3'));
  autoComplement.observe();
};
if(window.addEventListener){
window.addEventListener('load', initPostcodeJp)
}else{
window.attachEvent('onload', initPostcodeJp)
}