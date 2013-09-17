define(['jade'], function(jade) { if(jade && jade['runtime'] !== undefined) { jade = jade.runtime; }

this["JST"] = this["JST"] || {};

this["JST"]["assets/templates/first"] = function anonymous(locals) {
var buf = [];
var locals_ = (locals || {}),pageTitle = locals_.pageTitle,value = locals_.value,youAreUsingJade = locals_.youAreUsingJade;buf.push("<!DOCTYPE html><html lang=\"en\"><head><title>" + (jade.escape(null == (jade.interp = pageTitle) ? "" : jade.interp)) + "</title><script type=\"text/javascript\">if (foo) {\n   bar(1 + 5)\n}</script></head><body><h1>Jade - " + (jade.escape((jade.interp = value) == null ? '' : jade.interp)) + "</h1><div id=\"container\" class=\"col\">");
if ( youAreUsingJade)
{
buf.push("<p>You are amazing</p>");
}
else
{
buf.push("<p>Get on it!</p>");
}
buf.push("<p>Jade is a terse and simple\ntemplating language with a\nstrong focus on performance\nand powerful features.</p></div></body></html>");;return buf.join("");
};

this["JST"]["assets/templates/second"] = function anonymous(locals) {
var buf = [];
buf.push("<p>second template</p>");;return buf.join("");
};

return this["JST"];

});