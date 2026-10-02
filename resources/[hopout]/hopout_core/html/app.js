document.addEventListener('DOMContentLoaded', function() {
    window.addEventListener('message', function(event) {
        if (event.data.action === 'openCharacterCreator') {
            document.getElementById('characterCreator').classList.remove('hidden');
        } else if (event.data.action === 'showError') {
            document.getElementById('error').classList.remove('hidden');
            document.getElementById('error').textContent = event.data.message;
        }
    });

    document.getElementById('createCharacter').addEventListener('click', function() {
        const firstname = document.getElementById('firstname').value;
        const gender = document.getElementById('gender').value;
        
        if (firstname && gender) {
            fetch('https://hopout_core/createCharacter', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json; charset=UTF-8',
                },
                body: JSON.stringify({
                    firstname: firstname,
                    gender: gender
                })
            }).then(() => {
                document.getElementById('characterCreator').classList.add('hidden');
            });
        } else {
            document.getElementById('error').classList.remove('hidden');
        }
    });
});