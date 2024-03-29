if (document.querySelector('.loading-div')) {
  const UIloadingDiv = document.querySelector('.loading-div');
  window.addEventListener('load', () => {
    setTimeout(() => {
      UIloadingDiv.remove();
    }, 3000);
  });
}

if (document.querySelector('[data-aos]')) {
  AOS.init();
}


// handle header md

const UIlines = document.querySelector('.lines');
const UImainHeaderMdUlDiv = document.querySelector('.main-header-md-ul-div');

UIlines.addEventListener('click', e => {
  UIlines.classList.toggle('is-active');
  UImainHeaderMdUlDiv.classList.toggle('toggle-main-header-md-ul-div');
});
document.addEventListener('click', e => {
  if (e.target.classList.contains('main-header-md-ul-div')) {
    UIlines.classList.remove('is-active');
    UImainHeaderMdUlDiv.classList.remove('toggle-main-header-md-ul-div');
  }
});


// handle main sidebar drop links
const UIdropLinks = document.querySelectorAll('.drop-a');
for (let dropA of UIdropLinks) {
  dropA.addEventListener('click', e => {
    for (let n of UIdropLinks) {
      n.nextElementSibling.style.height = 0 + 'px';
      n.classList.remove('toggle-drop-a');
    }
    let calcHeight = 0;
    let calcParentHeight = 0;
    let calcGrandParentHeight = 0;
    for (let ele of dropA.nextElementSibling.children) {
      calcHeight += ele.children[0].offsetHeight;
    }

    if (dropA.nextElementSibling.offsetHeight === 0) {
      dropA.nextElementSibling.style.height = calcHeight + 'px';
      dropA.classList.add('toggle-drop-a');
      if (dropA.parentElement.parentElement.classList.contains('dropped-ul')) {
        for (let parentLi of dropA.parentElement.parentElement.children) {
          calcParentHeight += parentLi.children[0].offsetHeight;
        }
        // if the grand parent element has a dropped-ul class
        // then set the garnd parent height to the dropped ul plus the grand parent direct children height
        dropA.parentElement.parentElement.style.height = calcParentHeight + calcHeight + 'px';
        // dropA.parentElement.parentElement.parentElement.classList.add('toggle-drop-a');
        dropA.parentElement.parentElement.parentElement.children[0].classList.add('toggle-drop-a');
      }

      if (dropA.parentElement.parentElement.parentElement.parentElement.classList.contains('dropped-ul')) {
        for (let grandLi of dropA.parentElement.parentElement.parentElement.parentElement.children) {
          calcGrandParentHeight += grandLi.children[0].offsetHeight;
        }
        dropA.parentElement.parentElement.parentElement.parentElement.style.height = calcGrandParentHeight + calcHeight + 'px';
        dropA.parentElement.parentElement.parentElement.parentElement.parentElement.children[0].classList.add('toggle-drop-a');
      }
    } else {
      dropA.nextElementSibling.style.height = 0 + 'px';
      dropA.classList.remove('toggle-drop-a');
      if (dropA.parentElement.parentElement.classList.contains('dropped-ul')) {
        // if the garnd element has a dropped-ul class
        // then set the grand parent height to its direct children height only
        for (let parentLi of dropA.parentElement.parentElement.children) {
          calcParentHeight += parentLi.children[0].offsetHeight;
        }
        dropA.parentElement.parentElement.style.height = calcParentHeight + 'px';
        dropA.parentElement.parentElement.parentElement.children[0].classList.add('toggle-drop-a');
      }

      if (dropA.parentElement.parentElement.parentElement.parentElement.classList.contains('dropped-ul')) {
        for (let grandLi of dropA.parentElement.parentElement.parentElement.parentElement.children) {
          calcGrandParentHeight += grandLi.children[0].offsetHeight;
        }
        dropA.parentElement.parentElement.parentElement.parentElement.style.height = calcGrandParentHeight + 'px';
        dropA.parentElement.parentElement.parentElement.parentElement.parentElement.children[0].classList.add('toggle-drop-a');
      }
    }
    e.preventDefault();
  });
}


// handle scrolling
const UIheaderLg = document.querySelector('.header-lg');
const UIheaderMd = document.querySelector('.header-md');
window.addEventListener('scroll', () => {
  if (window.scrollY >= 200) {
    UIheaderMd.classList.add('toggle-header-md');
    UIheaderLg.classList.add('toggle-header-lg');
  } else {
    UIheaderMd.classList.remove('toggle-header-md');
    UIheaderLg.classList.remove('toggle-header-lg');
  }
})

// home main slider

var mainHomeSLider = new Swiper('.home-main-slider', {
  spaceBetween: 0,
  centeredSlides: false,
  speed: 1600,
  effect: 'fade',
  fadeEffect: {
    crossFade: true
  },
  loop: true,
  autoplay: {
    delay: 8000,
    disableOnInteraction: true,
  },
  navigation: {
    nextEl: '.home-main-slider-next',
    prevEl: '.home-main-slider-prev',
  },
  pagination: {
    el: '.home-main-slider-pagination',
    clickable: true
  },
});


// banner slider
var bannerSlider = new Swiper('.banner-slider', {
  spaceBetween: 0,
  centeredSlides: false,
  speed: 1000,
  loop: true,
  slidesPerView: 4,
  // spaceBetween: 40,
  breakpoints: {
    1199: {
      slidesPerView: 3,
      // spaceBetween: 30,
    },

    991: {
      slidesPerView: 2,
      // spaceBetween: 30,
    },
    767: {
      slidesPerView: 1,
      // spaceBetween: 30,
    }
  },

  autoplay: {
    delay: 2000,
    disableOnInteraction: false,
  },
  // navigation: {
  //   nextEl: '.clients-slider-next',
  //   prevEl: '.clients-slider-prev',
  // },
  // pagination: {
  //   el: '.clients-slider-pagination',
  //   clickable: true
  // }
});

// home gallery section

if (document.querySelector('.home-light-gallery')) {
  lightGallery(document.querySelector('.home-light-gallery'), {
    thumbnail: true
  });
}

// testmonials slider
if (document.querySelector('.testimonials-slick-slider')) {
  $('.testimonials-slick-slider').slick({
    centerMode: true,
    centerPadding: '0',
    slidesToShow: 3,
    infinite: true,
    dots: true,
    arrows: false,
    // autoplay: true,
    autoplaySpeed: 3000,
    focusOnSelect: true,
    responsive: [{
        breakpoint: 992,
        settings: {
          dots: true,
          arrows: false,
          autoplay: true,
          autoplaySpeed: 3000,
          infinite: true,
          centerMode: true,
          // centerPadding: '42px',
          slidesToShow: 1
        }
      },
      {
        breakpoint: 480,
        settings: {
          dots: true,
          arrows: false,
          autoplay: true,
          autoplaySpeed: 3000,
          infinite: true,
          centerMode: true,
          // centerPadding: '32px',
          slidesToShow: 1
        }
      }
    ]
  });
}



// faqs section
const UIquestions = document.querySelectorAll('.question-div');
const UIanswers = document.querySelectorAll('.answer-div');
for (let a of UIanswers) {
  a.style.height = 0 + 'px';
}
UIquestions.forEach(q => {
  q.addEventListener('click', e => {
    let answerHeight = 0;
    for (let ele of q.nextElementSibling.children) {
      answerHeight += ele.offsetHeight;
    }
    if (e.currentTarget.nextElementSibling.offsetHeight === 0) {
      UIquestions.forEach(qq => {
        qq.nextElementSibling.style.height = 0 + 'px';
        qq.parentElement.classList.remove('toggle-q-a-li');
      })
      e.currentTarget.nextElementSibling.style.height = answerHeight + 'px';
    } else {
      e.currentTarget.nextElementSibling.style.height = 0 + 'px';
    }
    e.currentTarget.parentElement.classList.toggle('toggle-q-a-li');
  });
});


//////////////////////////////////////////////////////////////////
// counter up section
if (document.querySelector('.counter-number')) {
  $('.counter-number').counterUp({
    delay: 10,
    time: 2000
  });
}
// end counter up section
//////////////////////////////////////////////////////////////////

// handle trim servcie text

function myTrim(UIele) {
  return UIele.textContent.replace(/^\s+|\s+$/gm, ' ').trim();
}

function trimText(UIele, charCount) {
  let myString = myTrim(UIele).split(' ');
  return myString.splice(0, charCount).join(' ') + '...';
}

if (document.querySelector('.home-services-section')) {
  const UIservicesText = document.querySelectorAll('.home-services-section .service-text .text p');
  for (let service of UIservicesText) {
    service.textContent = trimText(service, 18);
  }
}

if (document.querySelector('.latest-news-section')) {
  const UIserviceText = document.querySelectorAll('.news-text p');
  for (let service of UIserviceText) {
    service.textContent = trimText(service, 12);
  }
}
if (document.querySelector('.blogs-page')) {
  const newsText = document.querySelectorAll('.news-text p');
  for (let t of newsText) {
    t.textContent = trimText(t, 12);
  }
}

if (document.querySelector('.services-page')) {
  const UIeventsText = document.querySelectorAll('.service-details .text p');
  for (let ele of UIeventsText) {
    ele.textContent = trimText(ele, 12);
  }
}


$(function () {
  $("#datepicker").datepicker();
});


// handle form div
if (document.querySelector('.appointment-form')) {
  const UIformDivs = document.querySelectorAll('.appointment-form .form-div');
  UIformDivs.forEach(d => {
    d.addEventListener('click', (e) => {
      for (let k of UIformDivs) {
        k.classList.remove('toggle-form-div');
      }
      d.classList.add('toggle-form-div');
    });
  });

  document.addEventListener('click', (e) => {
    if (!e.target.parentElement.classList.contains('toggle-form-div')) {
      UIformDivs.forEach(ele => {
        ele.classList.remove('toggle-form-div');
      })
    }
  })
}
if (document.querySelector('.service-appointment-form')) {
  const UIformDivs = document.querySelectorAll('.service-appointment-form .form-div');
  UIformDivs.forEach(d => {
    d.addEventListener('click', (e) => {
      for (let k of UIformDivs) {
        k.classList.remove('toggle-form-div');
      }
      d.classList.add('toggle-form-div');
    });
  });

  document.addEventListener('click', (e) => {
    if (!e.target.parentElement.classList.contains('toggle-form-div')) {
      UIformDivs.forEach(ele => {
        ele.classList.remove('toggle-form-div');
      })
    }
  })
}

// handle upload property images
if (document.querySelector('.carrers-page')) {
  const UIupload = document.querySelector('input[type="file"]');
  const UIUploadLabel = document.querySelector('label[for="file"]');
  UIupload.addEventListener('change', handleFiles);

  function handleFiles() {
    const files = this.files;
    const fileNames = [];
    for (let i = 0; i < files.length; i++) {
      fileNames.push(files[i].name);
    }
    const fileNamesString = fileNames.join(' & ');
    UIUploadLabel.textContent = fileNamesString;
  }
}
// end handle upload property images



// handle hover on news li
if (document.querySelector('.news-li')) {
  const UInewslinks = document.querySelectorAll('.news-a');
  for (let a of UInewslinks) {
    a.addEventListener('mouseenter', () => {
      a.parentElement.classList.add('toggle-news-card');
    })

    a.addEventListener('mouseleave', () => {
      a.parentElement.classList.remove('toggle-news-card');
    })
  }
}


// handle pagination
if (document.querySelector('.pagination-ul')) {
  const UIpaginationUl = document.querySelector('.pagination-ul');
  for (let page of UIpaginationUl.children) {
    page.children[0].addEventListener('click', (e) => {
      for (let p of UIpaginationUl.children) {
        p.children[0].classList.remove('active-page');
      }
      const UIprevPage = document.querySelector('.pagination-ul li:first-of-type a');
      const UInextPage = document.querySelector('.pagination-ul li:last-of-type a');
      page.children[0].classList.add('active-page');
      if (UIprevPage.classList.contains('active-page') ||
        UInextPage.classList.contains('active-page')) {
        page.children[0].classList.remove('active-page');
      }
      e.preventDefault();
    });
  }
}