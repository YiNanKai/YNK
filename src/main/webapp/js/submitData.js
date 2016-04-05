$(function () {
    
    //$(".datepicker").datepicker();
    $("#new_userBirth").click(function(){
        JTC.setday({
            startDay: '1995-01-01',
            minDate:'1960-01-01',
            maxDate: '2012-07-11'
        })
    })
})