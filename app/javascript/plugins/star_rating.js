import 'jquery-bar-rating';
import 'jquery-bar-rating/dist/themes/css-stars';
// import 'jquery-bar-rating/dist/themes/fontawesome-stars';

const initBarRating = () => {
  $(function() {
        $('#rating').barrating({
          theme: 'css-stars'
        });
     });
};

export { initBarRating };