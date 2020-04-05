/// <reference path="scripts/typings/jquery/jquery.d.ts" />
var CounterClass = /** @class */ (function () {
    function CounterClass(i, elem) {
        this.count = 0;
        this.isStopped = false;
        this.startCount = i;
        this.count = i;
        this.elem = elem;
    }
    CounterClass.prototype.start = function () {
        var self = this;
        self.show();
        $('#countdownHome').css('visibility', 'collapse');
        this.fnCounter = setInterval(function () {
            if (self.count <= 0 || self.isStopped) {
                clearInterval(self.fnCounter);
                clearInterval(self.fnProgressBar);
                countdownZero();
            }
            self.show();
            self.count--;
        }, 1000);
        this.fnProgressBar = setInterval(function () {
            var percentDone = (self.startCount - self.count) * 100 / self.startCount;
            $('#countdownProgressBar').attr('style', 'width:' + percentDone.toString() + '%; background-color: orange;');
            $('#countdownProgressBar').attr('aria-valuenow', percentDone.toString());
        }, 100);
    };
    CounterClass.prototype.stop = function () {
        clearInterval(this.fnCounter);
        clearInterval(this.fnProgressBar);
        countdownZero();
        this.isStopped = true;
    };
    CounterClass.prototype.show = function () {
        var hours = Math.floor(this.count / (60 * 60));
        var minutes = Math.floor((this.count - hours * 60 * 60) / 60);
        var seconds = (this.count - hours * 60 * 60 - minutes * 60);
        this.elem.innerText = formatTime(hours, minutes, seconds);
        //$('#countdownSection').attr('style', 'background-color: darkred;')// color: orangered
        //setTimeout(function () { $('#countdownSection').attr('style', 'background-color: red;') }, 25);
        //var blinkElem = $('#' + this.elem.id);
        //blinkElem.attr('style', 'background-color: darkred;')
        //setTimeout(function () { blinkElem.attr('style', 'background-color: red;') }, 100);
    };
    return CounterClass;
}());
var cancelButton = /** @class */ (function () {
    function cancelButton() {
    }
    cancelButton.Enable = function () {
        this._viewCancel();
        this.buttonElement().removeAttribute('disabled');
    };
    cancelButton.Disable = function () {
        this._viewCancel();
        this.buttonElement().setAttribute('disabled', 'disabled');
    };
    cancelButton.Cancel = function () {
        this.Disable();
        this._viewCanceled();
    };
    cancelButton.buttonElement = function () {
        return document.getElementById('countdownCancelButton');
    };
    cancelButton._viewCancel = function () {
        this.buttonElement().value = 'Cancel';
        this.buttonElement().style.borderWidth = '5px';
    };
    cancelButton._viewCanceled = function () {
        this.buttonElement().value = 'Cancelled';
        this.buttonElement().style.borderWidth = '0';
    };
    return cancelButton;
}());
var homeButton = /** @class */ (function () {
    function homeButton() {
    }
    homeButton.show = function () {
        document.getElementById('countdownHome').style.visibility = 'visible';
    };
    homeButton.hide = function () {
        document.getElementById('countdownHome').style.visibility = 'collapse';
    };
    return homeButton;
}());
var appStateClass = /** @class */ (function () {
    function appStateClass() {
        this.hours = 0;
        this.minutes = 0;
        this.seconds = 0;
    }
    appStateClass.prototype.getTotalSeconds = function () {
        return this.hours * 60 * 60 + this.minutes * 60 + this.seconds;
    };
    appStateClass.prototype.settingUpCountdown = function () {
        document.getElementById('setupSection').style.display = 'block';
        document.getElementById('countdownSection').style.display = 'none';
    };
    appStateClass.prototype.countdownIsInProgress = function () {
        document.getElementById('setupSection').style.display = 'none';
        document.getElementById('countdownSection').style.display = 'block';
    };
    return appStateClass;
}());
var counter;
var appState;
window.onload = function () {
    appState = new appStateClass();
    appState.settingUpCountdown();
    document.getElementById('startButton').addEventListener('click', function () { return startCounter(); });
};
function startCounter() {
    appState.hours = $('#hoursStart').val();
    appState.minutes = $('#minutesStart').val();
    appState.seconds = $('#secondsStart').val();
    if (isNaN(appState.getTotalSeconds()) === false) {
        if (appState.getTotalSeconds() > 0) {
            appState.countdownIsInProgress();
            cancelButton.Enable();
            homeButton.hide();
            var elementCountdownValue = document.getElementById('countdownvalue');
            elementCountdownValue.style.paddingTop = '20px';
            counter = new CounterClass(appState.getTotalSeconds(), elementCountdownValue);
            counter.start();
            // make the count down section as large as the viewport and scroll section into view
            var countdownSection = document.getElementById('countdownSection');
            //countdownSection.style.height = (window.innerHeight + 200).toString() + "px";
            countdownSection.scrollIntoView();
        }
    }
}
function stopCounter() {
    counter.stop();
    cancelButton.Cancel();
}
function countdownZero() {
    var countdownValue = document.getElementById('countdownvalue');
    countdownValue.style.visibility = 'visible';
    setTimeout(function () { countdownValue.style.visibility = 'collapse'; }, 300);
    setTimeout(function () { countdownValue.style.visibility = 'visible'; }, 500);
    setTimeout(function () { countdownValue.style.visibility = 'collapse'; }, 800);
    setTimeout(function () { countdownValue.style.visibility = 'visible'; }, 1000);
    setTimeout(function () { countdownValue.style.visibility = 'collapse'; }, 1300);
    setTimeout(function () { countdownValue.style.visibility = 'visible'; }, 1500);
    cancelButton.Disable();
    setTimeout(function () { homeButton.show(); }, 2000);
}
function formatTime(hours, minutes, seconds) {
    var result = '';
    if (hours > 0) {
        result += hours.toString() + ':';
        result += minutes > 9 ? minutes.toString() + ':' : '0' + minutes.toString() + ':';
    }
    else {
        result += minutes.toString() + ':';
    }
    result += seconds > 9 ? seconds : '0' + seconds;
    return result;
}
function gotoCountdownSetup() {
    window.document.location.href = window.document.location.origin;
}
function keyPressed(e) {
    var x = $.isNumeric(e.char);
    var v = $('#minutesStart').val();
}
//# sourceMappingURL=countdown.js.map