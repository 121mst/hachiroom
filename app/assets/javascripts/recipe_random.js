(function($){
    $(function() {

        var rBox = [];
        $('.elements').each(function() {
            rBox.push($(this).html());
        });
        rBox.sort(function() {
            return Math.random() - Math.random();
        });
        $('.elements').empty();

        i = 0;
        $('.elements').each(function() {
            $(this).append(rBox[i]);
            i++;
        });

    });
})(jQuery);
