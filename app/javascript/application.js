// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("DOMContentLoaded", function() {
  const toggleButton = document.getElementById("toggle-review-form");
  const reviewForm = document.getElementById("review-form");

  toggleButton.addEventListener("click", function() {
    if (reviewForm.style.display === "none") {
      reviewForm.style.display = "block";
    } else {
      reviewForm.style.display = "none";
    }
  });
});
