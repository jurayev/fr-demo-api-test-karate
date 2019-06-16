function getCurrentDate(dateFormat) {
    var date = new java.util.Date(Date.now());
    var SimpleDateFormat = Java.type('java.text.SimpleDateFormat');
    if (!dateFormat) {
        dateFormat = 'yyyy-MM-dd';
    }
    return new SimpleDateFormat(dateFormat).format(date);
}