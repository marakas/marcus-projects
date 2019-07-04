class oneAppTalk extends HTMLElement {
    constructor() {
        // Always call super first in constructor
        super();
        window.document.body.style.backgroundColor = `green`;
    }
}
window.customElements.define("oneapp-talk", oneAppTalk);
//document.body.style.backgroundColor = `red`;
