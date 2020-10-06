function instanceParsleyValidator(elem){
    var config = {
        errorsContainer: function(elem){
            var $el = elem.$element.closest('.input-group');

            if($el.length > 0){
                return $el;
            }

            return elem;
        }
    };

    $(elem).parsley(config)
        .on('field:error', function(){
            this.$element.removeClass('is-valid').addClass('is-invalid');
        })
        .on('field:success', function(){
            this.$element.removeClass('is-invalid').addClass('is-valid');
        })
        .on('field:validated', function() {})
        .on('form:submit', function() {
            // return false;
        });
}