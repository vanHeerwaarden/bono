function util() {
}

util.GetTimestamp = function() {
    var ts = Math.round((new Date()).getTime() / 1000);
    return ts;
}