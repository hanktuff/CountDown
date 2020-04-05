/// <reference path="scripts/typings/jquery/jquery.d.ts" />


class CounterClass {
    startCount: number;
    count: number = 0;
    fnCounter: any;
    fnProgressBar: any;
    elem: HTMLElement;
    isStopped: boolean = false;

    constructor(i: number, elem: HTMLElement) {
        this.startCount = i;
        this.count = i;
        this.elem = elem;
    }

    public start() {

        var self = this;
        self.show();
        $('#countdownHome').css('visibility', 'collapse');

        this.fnCounter = setInterval(
            function () {

                if (self.count <= 0 || self.isStopped) {
                    clearInterval(self.fnCounter);
                    clearInterval(self.fnProgressBar);
                    countdownZero();
                }
                self.show();
                self.count--;
            }, 1000);

        this.fnProgressBar = setInterval(
            function () {
                var percentDone: number = (self.startCount - self.count) * 100 / self.startCount;
                $('#countdownProgressBar').attr('style', 'width:' + percentDone.toString() + '%; background-color: orange;');
                $('#countdownProgressBar').attr('aria-valuenow', percentDone.toString());
            }, 100);
    }

    public stop() {
        clearInterval(this.fnCounter);
        clearInterval(this.fnProgressBar);
        countdownZero();
        this.isStopped = true;
    }

    public show() {

        var hours = Math.floor(this.count / (60 * 60));
        var minutes = Math.floor((this.count - hours * 60 * 60) / 60);
        var seconds = (this.count - hours * 60 * 60 - minutes * 60);

        this.elem.innerText = formatTime(hours, minutes, seconds);

        //$('#countdownSection').attr('style', 'background-color: darkred;')// color: orangered
        //setTimeout(function () { $('#countdownSection').attr('style', 'background-color: red;') }, 25);

        //var blinkElem = $('#' + this.elem.id);
        //blinkElem.attr('style', 'background-color: darkred;')
        //setTimeout(function () { blinkElem.attr('style', 'background-color: red;') }, 100);
    }
}



class cancelButton {

    public static Enable(): void {
        this._viewCancel();
        this.buttonElement().removeAttribute('disabled');
    }

    public static Disable(): void {
        this._viewCancel();
        this.buttonElement().setAttribute('disabled', 'disabled');
    }

    public static Cancel(): void {
        this.Disable();
        this._viewCanceled();
    }

    private static buttonElement(): HTMLInputElement {
        return <HTMLInputElement>document.getElementById('countdownCancelButton');
    }

    private static _viewCancel(): void {
        this.buttonElement().value = 'Cancel';
        this.buttonElement().style.borderWidth = '5px';
    }

    private static _viewCanceled(): void {
        this.buttonElement().value = 'Cancelled';
        this.buttonElement().style.borderWidth = '0';
    }
}

class homeButton {

    public static show(): void {
        document.getElementById('countdownHome').style.visibility = 'visible';
    }

    public static hide(): void {
        document.getElementById('countdownHome').style.visibility = 'collapse';
    }
}

class appStateClass {

    public hours: number = 0;
    public minutes: number = 0;
    public seconds: number = 0;

    constructor() {
    }

    public getTotalSeconds(): number {
        return this.hours * 60 * 60 + this.minutes * 60 + this.seconds;
    }

    public settingUpCountdown(): void {
        document.getElementById('setupSection').style.display = 'block';
        document.getElementById('countdownSection').style.display = 'none';
    }

    public countdownIsInProgress(): void {
        document.getElementById('setupSection').style.display = 'none';
        document.getElementById('countdownSection').style.display = 'block';
    }
}



var counter: CounterClass;
var appState: appStateClass;

window.onload = function () {

    appState = new appStateClass();
    appState.settingUpCountdown();

    document.getElementById('startButton').addEventListener('click', () => startCounter());
}


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

            var countdownSection = (<HTMLElement>document.getElementById('countdownSection'));

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

function formatTime(hours: number, minutes: number, seconds: number): string {

    var result: string = '';

    if (hours > 0) {
        result += hours.toString() + ':';
        result += minutes > 9 ? minutes.toString() + ':' : '0' + minutes.toString() + ':';

    } else {
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

