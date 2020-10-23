function quantitySelectPriceCalc() {
  let itemTotalPrices = [...document.querySelectorAll('.item-total-price')];
  const cartTotalPrice = document.getElementById("cart-total-price");

  let arrayPrices = [];
  itemTotalPrices.forEach(function(itemTotalPrice){
    let price = parseInt(itemTotalPrice.innerHTML);
    arrayPrices.push(price);

    let sum = 0
    arrayPrices.forEach(function(price){
      sum += price
    });
    cartTotalPrice.innerHTML = sum;
    // 合計金額をorder#createに送信する
    const renderDom = document.getElementById("charge-form");
    const totalPriceObj = `<input value=${sum}, type="hidden", name="total_price">`;
    renderDom.insertAdjacentHTML("beforeend", totalPriceObj);
  });

  let quantities = document.querySelectorAll("#quantity");
  quantities.forEach(function (quantity){
    quantity.addEventListener("change", ()=> {
      const submitButtons = document.querySelectorAll("#commit");
      submitButtons.forEach(function (submitButton){
        submitButton.click();
        window.location.reload();
      });
    });
  });
};
window.addEventListener('load', quantitySelectPriceCalc);