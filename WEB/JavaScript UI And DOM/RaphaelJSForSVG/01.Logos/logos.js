/// <reference path="../Scripts/_references.js" />
(function () {
    "use strict";

    var paper = new Raphael(10, 10, 960, 500);

    var text = paper.text(350, 100, "Telerik�");
    text.attr({
        "font-weight": "bold",
        "font-size": 100,
        "font-family": "Calibri, Consolas, Arial"
    });

    var slogan = paper.text(340, 150, "Develop experiences");
    slogan.attr({
        "font-size": 35,
        "font-family": "Calibri, Consolas, Arial"
    });

    var telerikLogo = paper.path("M40 80 L75 50 L125 125 L100 155 L75 125 L125 50 L160 80")
    telerikLogo.attr({
        "stroke-width": 10,
        stroke: "#C1D832"
    });

    var you = paper.text(280, 300, "YOU");
    you.scale(0.6, 1);
    you.attr({
        "font-weight": "bold",
        "font-size": 100,
        "font-family": "Calibri, Consolas, Arial",
        fill: "#4A4A4A"
    });

    var rect = paper.rect(340, 250, 160, 100,25);
    rect.attr({
        fill: "#EC262A"
    });

    var tube = paper.text(420, 300, "TUBE");
    tube.scale(0.6, 1);
    tube.attr({
        "font-weight": "bold",
        "font-size": 100,
        "font-family": "Calibri, Consolas, Arial",
        fill: "white"
    });
})();