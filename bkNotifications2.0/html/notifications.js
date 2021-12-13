function ShowNotification(data) {
    const inScreen = !this.inScreen;
    const queueNotification = this.queueNotification.length;
    if (inScreen && queueNotification == 0) {
        this.inScreen = true;
        this.PlayNotification(data);
    } else {
        this.queueNotification.push(data);
    }
}
function PlayNotification(data) {
    const titleNotification = data.title;
    if (titleNotification != "null") {
        Conversor();
        $(".container").fadeIn();
        setTimeout(function () {
            $(".container").fadeOut();
            if (this.queueNotification.length > 0) {
                var data = this.queueNotification.pop();
                this.PlayNotification(data);
            } else {
                this.inScreen = false;
            }
        }, data.timeout);
    } else queue(data, SetView);

    function Conversor() {
        document.getElementById("title").innerHTML = data.title;
        document.getElementById("text").innerHTML = data.text;
    }

    function SetView() {
        $(".title").fadeOut();
        $(".container").fadeIn();
    }
}


