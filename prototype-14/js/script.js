document.addEventListener('DOMContentLoaded', function () {
    const searchInput = document.querySelector('.search-container input[type="text"]');
    const groupItems = document.querySelectorAll('.group-item');
    const categorySelect = document.querySelector('#Category');
  
    function filterItems(query) {
      groupItems.forEach(item => {
        const text = item.querySelector('p').textContent.toLowerCase();
        if (text.includes(query)) {
          item.style.display = 'block';
          if (query === 'สร้อยคอ' || query === 'สร้อย' || query === 'คอ') {
            item.addEventListener('click', function () {
              window.location.href = './necklace.html';
            });
          }
        } else {
          item.style.display = 'none';
          item.removeEventListener('click', function () {
            window.location.href = './necklace.html';
          });
        }
      });
    }
  
    searchInput.addEventListener('keydown', function (event) {
      if (event.key === 'Enter') {
        const query = searchInput.value.toLowerCase();
        filterItems(query);
      }
    });
  
    categorySelect.addEventListener('change', function () {
      const selectedCategory = categorySelect.value;
      
      groupItems.forEach(item => {
        const text = item.querySelector('p').textContent.toLowerCase();
        const categoryMap = {
          'food': 'อาหารแมว',
          'camera': 'กล้อง',
          'techno': 'ไอแพด',
          'shoe': 'รองเท้า',
          'decorations': 'สร้อยคอ'
        };
  
        if (text === categoryMap[selectedCategory]) {
          item.style.display = 'block';
        } else {
          item.style.display = 'none';
        }
      });
    });
  });
  