const bannerItem = document.querySelector('.banner-item');

function animateBanner() {
  bannerItem.classList.toggle('animate');
}

setInterval(animateBanner, 5000);
