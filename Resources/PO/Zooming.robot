*** Settings ***
Library                             SeleniumLibrary


*** Variables ***
${ZOOM_IN_SCRIPT}    document.body.style.zoom = '2.1';
${ZOOM_OUT_SCRIPT}    document.body.style.zoom = '0.3';

*** Keywords ***
Zoom In and Out
    Execute JavaScript    ${ZOOM_IN_SCRIPT}
    Capture Page Screenshot
    Execute JavaScript    ${ZOOM_OUT_SCRIPT}
    Capture Page Screenshot




