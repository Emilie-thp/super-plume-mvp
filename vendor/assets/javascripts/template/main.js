$(function(){
    $("#form-total").steps({
        headerTag: "h2",
        bodyTag: "section",
        transitionEffect: "fade",
        enableAllSteps: true,
        autoFocus: true,
        transitionEffectSpeed: 500,
        titleTemplate : '<div class="title">#title#</div>',
        labels: {
            previous : 'Back',
            next : '<i class="zmdi zmdi-chevron-right"></i>',
            finish : '<i class="zmdi zmdi-chevron-right"></i>',
            current : ''
        },
        onStepChanging: function (event, currentIndex, newIndex) { 
            var buyer_fullname = $('form input[name=buyer_title]:checked').val() + ' ' + $('#offer_buyer_first_name').val() + ' ' + $('#offer_buyer_last_name').val();
            var buyer_email = $('#offer_buyer_email').val();
            var buyer_adress = $('#offer_buyer_adress').val() + ', ' + $('#offer_buyer_zipcode').val() + ' ' + $('#offer_buyer_city').val();
            var seller_fullname = $('form input[name=seller_title]:checked').val() + ' ' + $('#offer_seller_first_name').val() + ' ' + $('#offer_seller_last_name').val();
            var seller_adress = $('#offer_seller_adress').val() + ', ' + $('#offer_seller_zipcode').val() + ' ' + $('#offer_seller_city').val();
            var property_description = $('form input[name=property_type]:checked').val() + ' de ' + $('#offer_property_surface').val() + ' m²';
            var property_adress = $('#offer_property_adress').val() + ', ' + $('#offer_property_zipcode').val() + ' ' + $('#offer_property_city').val();
            var property_price = $('#offer_property_price').val() + ' €, (' + $('#offer_property_price_letters').val() + ')';
            var date_max = $('#day').val() + '/' + $('#month').val() + '/' + $('#year').val();

            $('#buyer_fullname-val').text(buyer_fullname);
            $('#buyer_email-val').text(buyer_email);
            $('#buyer_adress-val').text(buyer_adress);
            $('#seller_fullname-val').text(seller_fullname);
            $('#seller_adress-val').text(seller_adress);
            $('#property_description-val').text(property_description);
            $('#property_adress-val').text(property_adress);
            $('#property_price-val').text(property_price);
            $('#date_max-val').text(date_max);

            return true;
        }
    });
});
