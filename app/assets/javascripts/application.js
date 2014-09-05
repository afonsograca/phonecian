// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery_ujs
//= require_tree .
$(function() {
	$("#authenticanteButton").live("click", function(){
		$("#manageNav").effect("scale",{percent: 200, direction:"vertical"}, 1000);
		$("#manageNav").effect("scale",{percent: 120, direction:"horizontal"}, 1000);
	});
	var timer = null;
	$("#characters th a, #characters .pagination a").live("click", function() {
		$.getScript(this.href);
		return false;
	});
	$("#characters_search input").keyup(function() {
		clearTimeout(timer);
		timer = setTimeout(function(){
			$.get($("#characters_search").attr("action"), $("#characters_search").serialize(), null, "script");
		    return false;
		}, 1000);
	  });
	$("#glyphs th a, #glyphs .pagination a").live("click", function() {
		$.getScript(this.href);
		return false;
	});
	$("#glyphs_search input").keyup(function() {
		clearTimeout(timer);
		timer = setTimeout(function(){
			$.get($("#glyphs_search").attr("action"), $("#glyphs_search").serialize(), null, "script");
		    return false;
		}, 1000);
	  });
	$("#scripts th a, #scripts .pagination a").live("click", function() {
		$.getScript(this.href);
		return false;
	});
	$("#scripts_search input").keyup(function() {
		clearTimeout(timer);
		timer = setTimeout(function(){
			$.get($("#scripts_search").attr("action"), $("#scripts_search").serialize(), null, "script");
		    return false;
		}, 1000);
	  });
	$("#sounds th a, #sounds .pagination a").live("click", function() {
		$.getScript(this.href);
		return false;
	});
	$("#sounds_search input").keyup(function() {
		clearTimeout(timer);
		timer = setTimeout(function(){
			$.get($("#sounds_search").attr("action"), $("#sounds_search").serialize(), null, "script");
		    return false;
		}, 1000);
	  });
	$("#alphabet th a, #alphabet .pagination a").live("click", function() {
		$.getScript(this.href);
		return false;
	});
	$("#alphabet_search input").keyup(function() {
		clearTimeout(timer);
		timer = setTimeout(function(){
			$.get($("#alphabet_search").attr("action"), $("#alphabet_search").serialize(), null, "script");
		    return false;
		}, 1000);
	  });
});