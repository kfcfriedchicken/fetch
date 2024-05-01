function displayUserTableRow(user) {
    const userTable = document.getElementById("userTable").getElementsByTagName('tbody')[0];
    const row = userTable.insertRow();
    const cell1 = row.insertCell(0);
    const cell2 = row.insertCell(1);
    const cell3 = row.insertCell(2);
    const cell4 = row.insertCell(3);
    const cell5 = row.insertCell(4);
    cell1.textContent = user.userID;
    cell2.textContent = user.lastname;
    cell3.textContent = user.firstname;
    cell4.textContent = user.email;
    cell5.textContent = user.urole;
}

async function refreshTable() {
    try {
        const response = await fetch("https://localhost/fetch/start.php?action=userListAPI");
        const data = await response.json();

        const userTable = document.getElementById("userTable").getElementsByTagName('tbody')[0];
        //** Clear existing rows and Populate with New Data
        userTable.innerHTML = '';
        data.forEach(user => {
            displayUserTableRow(user);
        });
        refreshTime.innerHTML = `Updated: ${Date()}`;

    } catch (error) {
        console.error('Error refreshing user list:', error);
    }
}
document.addEventListener("DOMContentLoaded", refreshTable);

    // Add a button for refreshing the table
    const refreshButton = document.createElement("button");
    refreshButton.textContent = "Refresh Table";
    refreshButton.addEventListener("click", refreshTable);
    document.body.appendChild(refreshButton);

    // Add a display to show the last updated time


