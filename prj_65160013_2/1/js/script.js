document.addEventListener('DOMContentLoaded', function() {
    const inputField = document.querySelector('.input');
    const cards = document.querySelectorAll('.card');

    inputField.addEventListener('input', function() {
        const searchText = inputField.value.toLowerCase();
        
        cards.forEach(card => {
            const title = card.querySelector('h3').textContent.toLowerCase();
            
            if (title.includes(searchText)) {
                card.style.display = 'block';
            } else {
                card.style.display = 'none';
            }
        });
    });
});
