var queueNotification = [];
var inScreen = false;
window.addEventListener('message', function (event) {

    if(event.data.see === true) {
        ShowNotification(event.data)
    }
    if(event.data.type == false) {
        const __ = "#icon";
        $(__).fadeOut()
    }
    
});
function queue(data, SetView) {
    {
        GetElement();
        SetView();
        setTimeout(function () {
            $(".container").fadeOut();
            if (this.queueNotification.length > 0) {
                var data = this.queueNotification.pop();
                this.PlayNotification(data);
            } else {
                this.inScreen = false;
            }
        }, data.timeout);
    }

    function GetElement() {
        document.getElementById("text").innerHTML = data.text;
    }
}

