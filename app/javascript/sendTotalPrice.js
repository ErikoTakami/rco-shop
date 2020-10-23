function sendTotalPrice() {
  const totalPriceDom = document.getElementById("cart-total-price")
  const totalPrice = parseInt(totalPriceDom.innerHTML);
  
  const renderDom = document.getElementById("charge-form");
  const totalPriceObj = `<input value=${totalPrice}, type="hidden", name="total_price">`;
  renderDom.insertAdjacentHTML("beforeend", totalPriceObj);
};
window.addEventListener('load', sendTotalPrice);