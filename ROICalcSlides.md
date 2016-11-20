---
title       : "Usefulness of the ROI Calculator"
author      : "Bill Martersteck"
date        : "11/19/2016"
mode        : selfcontained
framework   : io2012
---

# What is the ROI Calculator?

- Preparing for your financial future requires understanding your goals
and then predicting
how your investments will meet those goals.

- This simple calculator lets you alter 4 inputs
and then projects into the future
to see how those inputs will influence the results.

- This is a simple tool. More complex models are available
that allow more customization.

---

# Why is this important?

- Everyone needs to take greater responsibility for their
financial well being in their later years. Several factors influence
how much your investments grow and how much you put in versus what you get out.

- Since money in an investment is compounded, the longer your money has to grow, the more you will have when you need it. Start investing early.

- Greater rate of return leads to a larger pile at the end, but as rate of return increases, so does risk. General rule is to take more risk early and reduce as you get closer to needing to use the investment.

- Web based tool can be found at: https://wdsteck.shinyapps.io/FutureValue/

---

# ROI Calculator Inputs:



<!--html_preserve--><div class="form-group shiny-input-container">
<label for="presVal">Initial Investment</label>
<input id="presVal" type="number" class="form-control" value="100" min="0"/>
</div><!--/html_preserve--><!--html_preserve--><div class="form-group shiny-input-container">
<label class="control-label" for="rate">Annual Rate of Return (%)</label>
<input class="js-range-slider" id="rate" data-min="0" data-max="20" data-from="5" data-step="0.5" data-grid="1" data-grid-num="10" data-grid-snap="false" data-keyboard="true" data-keyboard-step="2.5" data-drag-interval="true" data-data-type="number" data-prettify-separator=","/>
</div><!--/html_preserve--><!--html_preserve--><div class="form-group shiny-input-container">
<label class="control-label" for="num">Number of Years</label>
<input class="js-range-slider" id="num" data-min="0" data-max="50" data-from="10" data-step="1" data-grid="1" data-grid-num="10" data-grid-snap="false" data-keyboard="true" data-keyboard-step="2" data-drag-interval="true" data-data-type="number" data-prettify-separator=","/>
</div><!--/html_preserve--><!--html_preserve--><div class="form-group shiny-input-container">
<label for="contrib">Annual Investments</label>
<input id="contrib" type="number" class="form-control" value="10" min="0"/>
</div><!--/html_preserve-->

---

# Plot of the Return on the Investment: 

<!--html_preserve--><div id="out86c24dbcb417f29c" style="width:100%; height:400px; " class="plotly html-widget html-widget-output"></div><!--/html_preserve-->
