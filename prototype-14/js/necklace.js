function updateResultsCount() {
    const productItems = document.querySelectorAll('.product-item');
    const count = productItems.length;

    const resultsCountDiv = document.getElementById('results-count');
    if (resultsCountDiv) {
        resultsCountDiv.textContent = count;
    }
}

document.addEventListener('DOMContentLoaded', updateResultsCount);

document.addEventListener('DOMContentLoaded', () => {
    const productItems = document.querySelectorAll('.product-item');
    productItems.forEach(item => {
      item.addEventListener('click', () => {
        window.location.href = './item.html';
      });
    });
  });
  