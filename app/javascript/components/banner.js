import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Welcome to LeWagon", "LeWagon Cinema"],
    typeSpeed: 25,
    loop: false
  });
}

export { loadDynamicBannerText };
