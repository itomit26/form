// JavaScript
document.addEventListener("DOMContentLoaded", function () {
    const deleteLinks = document.getElementsByClassName("delete-link");

    function confirmDelete(event) {
        event.preventDefault(); // Prevent the link from navigating immediately

        const confirmation = confirm("Are you sure you want to delete this product?");
        if (confirmation) {
            const deleteUrl = event.currentTarget.getAttribute("href");
            // Navigate to the delete URL
            window.location.href = deleteUrl;
            // Show the success message after a short delay to give time for the deletion to process
            setTimeout(() => {
                window.alert("Product has been deleted successfully.");
            }, 3000);
        }
    }

    for (const link of deleteLinks) {
        link.addEventListener("click", confirmDelete);
    }
});
