\begingroup
\obeyspaces\obeylines\global\let^^M=\jsR%
\catcode`\"=12%
\gdef\dljstositeiii{%
  var done = 0;
  var selite = ["s1", "s2", "s3", "s4", "s5"];
  var hinta = ["h1", "h2", "h3", "h4", "h5"];
  var i;

  function coloursPrinting() {
    this.getField("nimi").fillColor = color.white;
    this.getField("email").fillColor = color.white;
    this.getField("puhelin").fillColor = color.white;
    this.getField("tilinro").fillColor = color.white;
    this.getField("s1").fillColor = color.white;
    this.getField("s2").fillColor = color.white;
    this.getField("s3").fillColor = color.white;
    this.getField("s4").fillColor = color.white;
    this.getField("s5").fillColor = color.white;
    this.getField("h1").fillColor = color.white;
    this.getField("h2").fillColor = color.white;
    this.getField("h3").fillColor = color.white;
    this.getField("h4").fillColor = color.white;
    this.getField("h5").fillColor = color.white;

    this.getField("nimi").strokeColor = color.white;
    this.getField("email").strokeColor = color.white;
    this.getField("puhelin").strokeColor = color.white;
    this.getField("tilinro").strokeColor = color.white;
    this.getField("s1").strokeColor = color.white;
    this.getField("s2").strokeColor = color.white;
    this.getField("s3").strokeColor = color.white;
    this.getField("s4").strokeColor = color.white;
    this.getField("s5").strokeColor = color.white;
    this.getField("h1").strokeColor = color.white;
    this.getField("h2").strokeColor = color.white;
    this.getField("h3").strokeColor = color.white;
    this.getField("h4").strokeColor = color.white;
    this.getField("h5").strokeColor = color.white;

    this.getField("nimi").textFont = font.Helv;
    this.getField("email").textFont = font.Helv;
    this.getField("puhelin").textFont = font.Helv;
    this.getField("tilinro").textFont = font.Helv;
    this.getField("s1").textFont = font.Helv;
    this.getField("s2").textFont = font.Helv;
    this.getField("s3").textFont = font.Helv;
    this.getField("s4").textFont = font.Helv;
    this.getField("s5").textFont = font.Helv;
    this.getField("h1").textFont = font.Helv;
    this.getField("h2").textFont = font.Helv;
    this.getField("h3").textFont = font.Helv;
    this.getField("h4").textFont = font.Helv;
    this.getField("h5").textFont = font.Helv;
  }

  function coloursScreen() {
    var newcolour = ["RGB", 0.65, 0.79, 0.94];
    this.getField("nimi").fillColor = newcolour;
    this.getField("email").fillColor = newcolour;
    this.getField("puhelin").fillColor = newcolour;
    this.getField("tilinro").fillColor = newcolour;
    this.getField("s1").fillColor = newcolour;
    this.getField("s2").fillColor = newcolour;
    this.getField("s3").fillColor = newcolour;
    this.getField("s4").fillColor = newcolour;
    this.getField("s5").fillColor = newcolour;

    this.getField("nimi").strokeColor = newcolour;
    this.getField("email").strokeColor = newcolour;
    this.getField("puhelin").strokeColor = newcolour;
    this.getField("tilinro").strokeColor = newcolour;
    this.getField("s1").strokeColor = newcolour;
    this.getField("s2").strokeColor = newcolour;
    this.getField("s3").strokeColor = newcolour;
    this.getField("s4").strokeColor = newcolour;
    this.getField("s5").strokeColor = newcolour;

    this.getField("nimi").textFont = font.HelvB;
    this.getField("email").textFont = font.HelvB;
    this.getField("puhelin").textFont = font.HelvB;
    this.getField("tilinro").textFont = font.HelvB;
    this.getField("s1").textFont = font.HelvB;
    this.getField("h1").textFont = font.HelvB;
    this.getField("s2").textFont = font.HelvB;
    this.getField("h2").textFont = font.HelvB;
    this.getField("s3").textFont = font.HelvB;
    this.getField("h3").textFont = font.HelvB;
    this.getField("s4").textFont = font.HelvB;
    this.getField("h4").textFont = font.HelvB;
    this.getField("s5").textFont = font.HelvB;
    this.getField("h5").textFont = font.HelvB;
  }

  function willPrint() {
    this.delay = true;
    coloursPrinting();
    totalSum();
//    this.getButton("laske").display = display.hidden;
    this.delay = false;
  }

  function didPrint() {
    this.delay = true;
    coloursScreen();
    this.delay = false;
  }

  function docOpen() {
    if(!done) {
      done = 1;
      this.delay = true;
      coloursScreen();
      this.getField("nimi").editable = true;
      this.getField("puhelin").editable = true;
      this.getField("email").editable = true;
      this.getField("tilinro").editable = true;
      this.getField("s1").editable = true;
      this.getField("h1").editable = true;
      this.getField("s2").editable = true;
      this.getField("h2").editable = true;
      this.getField("s3").editable = true;
      this.getField("h3").editable = true;
      this.getField("s4").editable = true;
      this.getField("h4").editable = true;
      this.getField("s5").editable = true;
      this.getField("h5").editable = true;

      this.getField("nimi").setFocus();

      this.delay = false;
    }
  }

  function totalSum() {
    var summa = 0.0;
    summa = summa + this.getField("h1").value;
    summa = summa + this.getField("h2").value;
    summa = summa + this.getField("h3").value;
    summa = summa + this.getField("h4").value;
    summa = summa + this.getField("h5").value;
    var mutsis = Math.round(100.0 * summa);
    mutsis = 0.01 * mutsis;
    mutsis = mutsis.toFixed(2);
    mutsis = mutsis.toString();
    this.getField("total").value = mutsis;
    var d = new Date();
    this.getField("idag").value = util.printd("d.m.yyyy",d);
  }

}%
\endgroup
\begingroup 
\ccpdftex%
\input{dljscc.def}%
\immediate\pdfobj{ << /S /JavaScript /JS (\dljstositeiii) >> }
\xdef\objtositeiii{\the\pdflastobj\space0 R}
\endgroup 
\endinput
