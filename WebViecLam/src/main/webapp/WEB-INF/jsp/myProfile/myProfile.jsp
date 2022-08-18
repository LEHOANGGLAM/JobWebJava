<%-- 
    Document   : dashboard-page
    Created on : Aug 17, 2022, 11:14:49 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="profile" href="https://gmpg.org/xfn/11">
        <link rel="pingback" href="https://workscout.in/xmlrpc.php">

        <title>My Profile &#8211; WorkScout</title>
        <meta name='robots' content='max-image-preview:large' />
        <link rel='dns-prefetch' href='//s.w.org' />
        <link href='https://fonts.gstatic.com' crossorigin rel='preconnect' />
        <link rel="alternate" type="application/rss+xml" title="WorkScout &raquo; Feed" href="https://workscout.in/feed/" />
        <link rel="alternate" type="application/rss+xml" title="WorkScout &raquo; Comments Feed" href="https://workscout.in/comments/feed/" />
        <<link rel="stylesheet" href="resources/css/dashboard.css"/>
        <script type="text/javascript">
            window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/13.1.0\/72x72\/", "ext":".png", "svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/13.1.0\/svg\/", "svgExt":".svg", "source":{"concatemoji":"https:\/\/workscout.in\/wp-includes\/js\/wp-emoji-release.min.js"}};
            /*! This file is auto-generated */
            !function(e, a, t){var n, r, o, i = a.createElement("canvas"), p = i.getContext && i.getContext("2d"); function s(e, t){var a = String.fromCharCode; p.clearRect(0, 0, i.width, i.height), p.fillText(a.apply(this, e), 0, 0); e = i.toDataURL(); return p.clearRect(0, 0, i.width, i.height), p.fillText(a.apply(this, t), 0, 0), e === i.toDataURL()}function c(e){var t = a.createElement("script"); t.src = e, t.defer = t.type = "text/javascript", a.getElementsByTagName("head")[0].appendChild(t)}for (o = Array("flag", "emoji"), t.supports = {everything:!0, everythingExceptFlag:!0}, r = 0; r < o.length; r++)t.supports[o[r]] = function(e){if (!p || !p.fillText)return!1; switch (p.textBaseline = "top", p.font = "600 32px Arial", e){case"flag":return s([127987, 65039, 8205, 9895, 65039], [127987, 65039, 8203, 9895, 65039])?!1:!s([55356, 56826, 55356, 56819], [55356, 56826, 8203, 55356, 56819]) && !s([55356, 57332, 56128, 56423, 56128, 56418, 56128, 56421, 56128, 56430, 56128, 56423, 56128, 56447], [55356, 57332, 8203, 56128, 56423, 8203, 56128, 56418, 8203, 56128, 56421, 8203, 56128, 56430, 8203, 56128, 56423, 8203, 56128, 56447]); case"emoji":return!s([10084, 65039, 8205, 55357, 56613], [10084, 65039, 8203, 55357, 56613])}return!1}(o[r]), t.supports.everything = t.supports.everything && t.supports[o[r]], "flag" !== o[r] && (t.supports.everythingExceptFlag = t.supports.everythingExceptFlag && t.supports[o[r]]); t.supports.everythingExceptFlag = t.supports.everythingExceptFlag && !t.supports.flag, t.DOMReady = !1, t.readyCallback = function(){t.DOMReady = !0}, t.supports.everything || (n = function(){t.readyCallback()}, a.addEventListener?(a.addEventListener("DOMContentLoaded", n, !1), e.addEventListener("load", n, !1)):(e.attachEvent("onload", n), a.attachEvent("onreadystatechange", function(){"complete" === a.readyState && t.readyCallback()})), (n = t.source || {}).concatemoji?c(n.concatemoji):n.wpemoji && n.twemoji && (c(n.twemoji), c(n.wpemoji)))}(window, document, window._wpemojiSettings);
        </script>

        <link rel='stylesheet' id='wfsi-socialicons-css'  href='https://workscout.in/wp-content/plugins/web-font-social-icons/css/icons.css' type='text/css' media='all' />

        <link rel='stylesheet' id='wp-block-library-css'  href='https://workscout.in/wp-includes/css/dist/block-library/style.min.css' type='text/css' media='all' />
        <link rel='stylesheet' id='wc-blocks-vendors-style-css'  href='https://workscout.in/wp-content/plugins/woocommerce/packages/woocommerce-blocks/build/wc-blocks-vendors-style.css' type='text/css' media='all' />
        <link rel='stylesheet' id='wc-blocks-style-css'  href='https://workscout.in/wp-content/plugins/woocommerce/packages/woocommerce-blocks/build/wc-blocks-style.css' type='text/css' media='all' />

        <link rel='stylesheet' id='contact-form-7-css'  href='https://workscout.in/wp-content/plugins/contact-form-7/includes/css/styles.css' type='text/css' media='all' />
        <link rel='stylesheet' id='rs-plugin-settings-css'  href='https://workscout.in/wp-content/plugins/revslider/public/assets/css/rs6.css' type='text/css' media='all' />
        <style id='rs-plugin-settings-inline-css' type='text/css'>
            #rs-demo-id {
            }
        </style>
        <style id='woocommerce-inline-inline-css' type='text/css'>
            .woocommerce form .form-row .required {
                visibility: visible;
            }
        </style>
        <link rel='stylesheet' id='dashicons-css'  href='https://workscout.in/wp-includes/css/dashicons.min.css' type='text/css' media='all' />
        <link rel='stylesheet' id='mas-wp-job-manager-company-reviews-css'  href='https://workscout.in/wp-content/plugins/mas-wp-job-manager-company-reviews/assets/css/mas-wp-job-manager-company-reviews.css' type='text/css' media='all' />
        <link rel='stylesheet' id='job-alerts-frontend-css'  href='https://workscout.in/wp-content/plugins/wp-job-manager-alerts/assets/css/frontend.css' type='text/css' media='all' />
        <link rel='stylesheet' id='wp-job-manager-tags-frontend-css'  href='https://workscout.in/wp-content/plugins/wp-job-manager-tags/assets/css/style.css' type='text/css' media='all' />
        <link rel='stylesheet' id='wc-paid-listings-packages-css'  href='https://workscout.in/wp-content/plugins/wp-job-manager-wc-paid-listings/assets/dist/css/packages.css' type='text/css' media='all' />
        <link rel='stylesheet' id='workscout-base-css'  href='https://workscout.in/wp-content/themes/workscout/css/base.min.css' type='text/css' media='all' />
        <link rel='stylesheet' id='workscout-responsive-css'  href='https://workscout.in/wp-content/themes/workscout/css/responsive.min.css' type='text/css' media='all' />
        <link rel='stylesheet' id='workscout-font-awesome-css'  href='https://workscout.in/wp-content/themes/workscout/css/font-awesome.min.css' type='text/css' media='all' />
        <link rel='stylesheet' id='workscout-style-css'  href='https://workscout.in/wp-content/themes/workscout/style.css' type='text/css' media='all' />
        <link rel='stylesheet' id='workscout-woocommerce-css'  href='https://workscout.in/wp-content/themes/workscout/css/woocommerce.min.css' type='text/css' media='all' />
        <link rel='stylesheet' id='workscout-v2-css'  href='https://workscout.in/wp-content/themes/workscout/css/v2style.css' type='text/css' media='all' />
        <script type='text/javascript' src='https://workscout.in/wp-includes/js/dist/vendor/regenerator-runtime.min.js' id='regenerator-runtime-js'></script>
        <script type='text/javascript' src='https://workscout.in/wp-includes/js/dist/vendor/wp-polyfill.min.js' id='wp-polyfill-js'></script>
        <script type='text/javascript' src='https://workscout.in/wp-includes/js/jquery/jquery.min.js' id='jquery-core-js'></script>
        <script type='text/javascript' src='https://workscout.in/wp-includes/js/jquery/jquery-migrate.min.js' id='jquery-migrate-js'></script>
        <script type='text/javascript' src='https://workscout.in/wp-content/plugins/revslider/public/assets/js/rbtools.min.js' id='tp-tools-js'></script>
        <script type='text/javascript' src='https://workscout.in/wp-content/plugins/revslider/public/assets/js/rs6.min.js' id='revmin-js'></script>
        <script type='text/javascript' src='https://workscout.in/wp-includes/js/dist/hooks.min.js' id='wp-hooks-js'></script>
        <script type='text/javascript' id='say-what-js-js-extra'>
            /* <![CDATA[ */
            var say_what_data = {"replacements":[]};
            /* ]]> */
        </script>
        <script type='text/javascript' src='https://workscout.in/wp-content/plugins/say-what/assets/build/frontend.js' id='say-what-js-js'></script>
        <script type='text/javascript' src='https://workscout.in/wp-content/plugins/workscout-core/assets/js/leaflet.js' id='leaflet.js-js'></script>
        <script type='text/javascript' src='https://workscout.in/wp-content/plugins/workscout-core/assets/js/leaflet-googlemutant.js' id='workscout_core-leaflet-google-maps-js'></script>
        <script type='text/javascript' src='https://workscout.in/wp-content/plugins/workscout-core/assets/js/control.geocoder.js' id='workscout_core-leaflet-geocoder-js'></script>
        <script type='text/javascript' src='https://workscout.in/wp-content/plugins/workscout-core/assets/js/leaflet.markercluster.js' id='workscout_core-leaflet-markercluster-js'></script>
        <script type='text/javascript' src='https://workscout.in/wp-content/plugins/workscout-core/assets/js/leaflet-gesture-handling.min.js' id='workscout_core-leaflet-gesture-handling-js'></script>
        <script type='text/javascript' id='workscout_core-leaflet-js-extra'>
            /* <![CDATA[ */
            var wsmap = {"marker_color":"#26ae61", "use_clusters":"1", "autofit":"1", "default_zoom":"10", "map_type":"ROADMAP", "scroll_zoom":"", "geocode":"1", "address_provider":"osm", "centerPoint":"52.2296756,21.012228700000037", "country":"", "maps_autolocate":""};
            /* ]]> */
        </script>
        <script type='text/javascript' src='https://workscout.in/wp-content/plugins/workscout-core/assets/js/workscout.leaflet.js' id='workscout_core-leaflet-js'></script>
        <script type='text/javascript' id='workscout_core-frontend-js-extra'>
            /* <![CDATA[ */
            var workscout_core = {"ajax_url":"\/wp-admin\/admin-ajax.php", "is_rtl":"0", "lang":"", "loadingmessage":"Sending user info, please wait...", "submitCenterPoint":"52.2296756,21.012228700000037", "centerPoint":"52.2296756,21.012228700000037", "country":"", "upload":"https:\/\/workscout.in\/wp-admin\/admin-ajax.php?action=handle_dropped_media", "delete":"https:\/\/workscout.in\/wp-admin\/admin-ajax.php?action=handle_delete_media", "color":"#274abb", "autologin":"", "map_provider":"mapbox", "mapbox_access_token":"pk.eyJ1IjoibWF0ZXVzenB0IiwiYSI6ImNrbnRoY2d1bTAyemcydXJtZ3lkNnVyMGoifQ.0EKYa25DjwN6tYDMgDe65Q", "mapbox_retina":"on", "bing_maps_key":"", "thunderforest_api_key":"", "here_app_id":"", "here_app_code":"", "category_title":"Category Title", "radius_state":"enabled", "radius_default":"50", "recaptcha_status":"", "recaptcha_version":"v3", "recaptcha_sitekey3":"6LcphjcaAAAAAAcXCmvIN630YaJlJzBdIEHaB8P2"};
            /* ]]> */
        </script>
        <script type='text/javascript' src='https://workscout.in/wp-content/plugins/workscout-core/assets/js/frontend.js' id='workscout_core-frontend-js'></script>
        <script type='text/javascript' src='https://workscout.in/wp-content/plugins/mas-wp-job-manager-company-reviews/assets/js/mas-wp-job-manager-company-reviews.js' id='mas-wp-job-manager-company-reviews-js-js'></script>
        <link rel="https://api.w.org/" href="https://workscout.in/wp-json/" /><link rel="alternate" type="application/json" href="https://workscout.in/wp-json/wp/v2/pages/18886" /><link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://workscout.in/xmlrpc.php?rsd" />
        <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://workscout.in/wp-includes/wlwmanifest.xml" /> 
        <meta name="generator" content="WordPress 5.9.3" />
        <meta name="generator" content="WooCommerce 6.2.2" />
        <link rel="canonical" href="https://workscout.in/my-profile/" />
        <link rel='shortlink' href='https://workscout.in/?p=18886' />
        <link rel="alternate" type="application/json+oembed" href="https://workscout.in/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fworkscout.in%2Fmy-profile%2F" />
        <link rel="alternate" type="text/xml+oembed" href="https://workscout.in/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fworkscout.in%2Fmy-profile%2F&#038;format=xml" />




        <noscript><style>.woocommerce-product-gallery{
                opacity: 1 !important;
            }</style></noscript>
        <meta name="generator" content="Powered by Slider Revolution 6.4.2 - responsive, Mobile-Friendly Slider Plugin for WordPress with comfortable drag and drop interface." />
        <script type="text/javascript">function setREVStartSize(e){
            //window.requestAnimationFrame(function() {				 
            window.RSIW = window.RSIW === undefined ? window.innerWidth : window.RSIW;
            window.RSIH = window.RSIH === undefined ? window.innerHeight : window.RSIH;
            try {
            var pw = document.getElementById(e.c).parentNode.offsetWidth,
                    newh;
            pw = pw === 0 || isNaN(pw) ? window.RSIW : pw;
            e.tabw = e.tabw === undefined ? 0 : parseInt(e.tabw);
            e.thumbw = e.thumbw === undefined ? 0 : parseInt(e.thumbw);
            e.tabh = e.tabh === undefined ? 0 : parseInt(e.tabh);
            e.thumbh = e.thumbh === undefined ? 0 : parseInt(e.thumbh);
            e.tabhide = e.tabhide === undefined ? 0 : parseInt(e.tabhide);
            e.thumbhide = e.thumbhide === undefined ? 0 : parseInt(e.thumbhide);
            e.mh = e.mh === undefined || e.mh == "" || e.mh === "auto" ? 0 : parseInt(e.mh, 0);
            if (e.layout === "fullscreen" || e.l === "fullscreen")
                    newh = Math.max(e.mh, window.RSIH);
            else{
            e.gw = Array.isArray(e.gw) ? e.gw : [e.gw];
            for (var i in e.rl) if (e.gw[i] === undefined || e.gw[i] === 0) e.gw[i] = e.gw[i - 1];
            e.gh = e.el === undefined || e.el === "" || (Array.isArray(e.el) && e.el.length == 0)? e.gh : e.el;
            e.gh = Array.isArray(e.gh) ? e.gh : [e.gh];
            for (var i in e.rl) if (e.gh[i] === undefined || e.gh[i] === 0) e.gh[i] = e.gh[i - 1];
            var nl = new Array(e.rl.length),
                    ix = 0,
                    sl;
            e.tabw = e.tabhide >= pw ? 0 : e.tabw;
            e.thumbw = e.thumbhide >= pw ? 0 : e.thumbw;
            e.tabh = e.tabhide >= pw ? 0 : e.tabh;
            e.thumbh = e.thumbhide >= pw ? 0 : e.thumbh;
            for (var i in e.rl) nl[i] = e.rl[i] < window.RSIW ? 0 : e.rl[i];
            sl = nl[0];
            for (var i in nl) if (sl > nl[i] && nl[i] > 0) { sl = nl[i]; ix = i; }
            var m = pw > (e.gw[ix] + e.tabw + e.thumbw) ? 1 : (pw - (e.tabw + e.thumbw)) / (e.gw[ix]);
            newh = (e.gh[ix] * m) + (e.tabh + e.thumbh);
            }
            if (window.rs_init_css === undefined) window.rs_init_css = document.head.appendChild(document.createElement("style"));
            document.getElementById(e.c).height = newh + "px";
            window.rs_init_css.innerHTML += "#" + e.c + "_wrapper { height: " + newh + "px }";
            } catch (e){
            console.log("Failure at Presize of Slider:" + e)
            }
            //});
            };</script>

    </head>

    <body data-rsssl=1 class="page-template page-template-template-dashboard page-template-template-dashboard-php page page-id-18886 logged-in fullwidth theme-workscout woocommerce-no-js mas-wpjmc-activated group-blog workscout elementor-default elementor-kit-25776">
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-dark-grayscale"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0 0.49803921568627" /><feFuncG type="table" tableValues="0 0.49803921568627" /><feFuncB type="table" tableValues="0 0.49803921568627" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-grayscale"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0 1" /><feFuncG type="table" tableValues="0 1" /><feFuncB type="table" tableValues="0 1" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-purple-yellow"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0.54901960784314 0.98823529411765" /><feFuncG type="table" tableValues="0 1" /><feFuncB type="table" tableValues="0.71764705882353 0.25490196078431" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-blue-red"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0 1" /><feFuncG type="table" tableValues="0 0.27843137254902" /><feFuncB type="table" tableValues="0.5921568627451 0.27843137254902" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-midnight"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0 0" /><feFuncG type="table" tableValues="0 0.64705882352941" /><feFuncB type="table" tableValues="0 1" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-magenta-yellow"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0.78039215686275 1" /><feFuncG type="table" tableValues="0 0.94901960784314" /><feFuncB type="table" tableValues="0.35294117647059 0.47058823529412" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-purple-green"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0.65098039215686 0.40392156862745" /><feFuncG type="table" tableValues="0 1" /><feFuncB type="table" tableValues="0.44705882352941 0.4" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-blue-orange"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0.098039215686275 1" /><feFuncG type="table" tableValues="0 0.66274509803922" /><feFuncB type="table" tableValues="0.84705882352941 0.41960784313725" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg>	<!-- Mobile Navigation -->
   
    <tiles:insertAttribute name="header" />
    <tiles:insertAttribute name="content" />


    <!-- Mobile Navigation / End-->

    <!-- Dashboard -->
    <div id="dashboard">

        <!-- Navigation
        ================================================== -->

        <!-- Responsive Navigation Trigger -->
        <a href="#" class="dashboard-responsive-nav-trigger"><i class="fa fa-reorder"></i> Dashboard Navigation</a>

        <div class="dashboard-nav employer-dashboard-nav">
            <div class="dashboard-nav-inner">
                <ul data-submenu-title="Main">

                    <li id="dashboard_page-menu" ><a href="https://workscout.in/dashboard-page/"> Dashboard</a></li>


                    <li id="messages_page-menu" >
                        <a href="https://workscout.in/messages/">Messages 
                        </a>
                    </li>

                    <li id="bookmarks_page-menu" ><a href="https://workscout.in/my-bookmarks/"> Bookmarks</a></li>

                </ul>
                <ul id="employer-menu" data-submenu-title="Employer">

                    <li id="jobs_dashboard-menu" >
                        <a href="https://workscout.in/job-dashboard/">
                            Manage Jobs <span class="nav-tag">0</span>
                        </a>
                    </li>


                    <li id="submit_page-menu" >
                        <a href="https://workscout.in/post-a-job/">
                            Submit Job                    </a>
                    </li>

                    <li id="submit_page-menu" >
                        <a href="https://workscout.in/company-dashboard/">
                            Manage Companies                         <span class="nav-tag">23</span>
                        </a>
                    </li>
                    <li id="submit_page-menu" >
                        <a href="https://workscout.in/submit-company/">
                            Add Company                    </a>
                    </li>

                </ul>  


                <ul id="account-menu" data-submenu-title="Account">
                    <li id="profile_page-menu" class="active" ><a href="https://workscout.in/my-profile/"> My Profile</a></li>





                    <li id="logout-menu"><a href="https://workscout.in/wp-login.php?action=logout&amp;redirect_to=https%3A%2F%2Fworkscout.in&amp;_wpnonce=12e1b9590a">Logout</a></li>
                </ul>



            </div>
        </div>
        <!-- Navigation / End -->

        <!-- Content
            ================================================== -->  
        <div class="dashboard-content" id="post-18886" class="post-18886 page type-page status-publish hentry">
            <!-- Titlebar -->
            <div id="titlebar">
                <div class="row">
                    <div class="col-md-12">
                        <h1>My Profile</h1>  
                        <!-- Breadcrumbs -->
                        <nav id="breadcrumbs">
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li>Dashboard</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>




            <div class="row">

                <!-- Profile -->
                <div class="col-lg-6 col-md-12">
                    <div class="dashboard-list-box margin-top-0">
                        <h4 class="gray">Profile Details</h4>
                        <form method="post" enctype='multipart/form-data' id="edit_user" action="https://workscout.in/my-profile/">
                            <div class="dashboard-list-box-static">


                                <!-- Details -->
                                <div class="my-profile">

                                    <label for="workscout_core_avatar_id">Avatar</label>
                                    <div class="avatar-wrapper workscout-avatar-form" data-tippy-placement="bottom" title="Change Avatar">

                                        <img class="profile-pic" src="https://workscout.in/wp-content/uploads/2022/01/user-profile-avatar-590x590-1.jpg" alt="" />
                                        <div class="upload-button"></div>
                                        <input class="file-upload"  name="workscout_core_avatar_id" id="workscout_core_avatar_id"  type="file" accept="image/*"/>
                                    </div>	

                                    <div class="clearfix"></div>


                                    <label for="first-name">First Name</label>
                                    <input class="text-input" name="first-name" type="text" id="first-name" value="Tom" />

                                    <label for="last-name">Last Name</label>
                                    <input class="text-input" name="last-name" type="text" id="last-name" value="Wilson" />

                                    <label for="phone">Phone</label>
                                    <input class="text-input" name="phone" type="text" id="phone" value="" type="text">

                                    <label for="email">E-mail</label>
                                    <input class="text-input" name="email" type="text" id="email" value="tom@example.com" />

                                    <label for="description">About me</label>
                                    <textarea name="description" id="description" cols="30" rows="10"></textarea>
                                    <div id="my-profile_socials" style="display: none;">


                                        <label><i class="fa fa-twitter"></i> Twitter</label>
                                        <input class="text-input" name="twitter" type="text" id="twitter" value="" />

                                        <label><i class="fa fa-facebook-square"></i> Facebook</label>
                                        <input class="text-input" name="facebook" type="text" id="facebook" value="" />


                                        <label><i class="fa fa-linkedin"></i> Linkedin</label>
                                        <input class="text-input" name="linkedin" type="text" id="linkedin" value="" />


                                        <label><i class="fa fa-instagram"></i> Instagram</label>
                                        <input class="text-input" name="instagram" type="text" id="instagram" value="" />

                                        <label><i class="fa fa-youtube"></i> YouTube</label>
                                        <input class="text-input" name="youtube" type="text" id="youtube" value="" />

                                        <label><i class="fa fa-whatsapp"></i> WhatsApp</label>
                                        <input class="text-input" name="whatsapp" type="text" id="whatsapp" value="" />

                                        <label><i class="fa fa-skype"></i> Skype</label>
                                        <input class="text-input" name="skype" type="text" id="skype" value="" />

                                    </div>


                                    <input type="hidden" name="my-account-submission" value="1" />
                                    <button type="submit" form="edit_user" value="Submit" class="button margin-top-20 margin-bottom-20">Save Changes</button>




                                </div>


                            </div>
                    </div>
                </div>
                </form>
                <!-- Change Password -->
                <div class="col-lg-6 col-md-12">
                    <div class="dashboard-list-box margin-top-0">
                        <h4 class="gray">Change Password</h4>
                        <div class="dashboard-list-box-static">

                            <!-- Change Password -->
                            <div class="my-profile">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="notification notice margin-top-0 margin-bottom-0">
                                            <p>Your password should be at least 12 random characters long to be safe</p>
                                        </div>
                                    </div>
                                </div>

                                <form name="resetpasswordform" action="" method="post">
                                    <label>Current Password</label>
                                    <input type="password" name="current_pass">

                                    <label for="pass1">New Password</label>
                                    <input name="pass1" type="password">

                                    <label for="pass2">Confirm New Password</label>
                                    <input name="pass2" type="password">

                                    <input type="submit" name="wp-submit" id="wp-submit" class="margin-top-20 button" value="Save Changes" />

                                    <input type="hidden" name="workscout_core-password-change" value="1" />
                                </form>


                            </div>

                        </div>
                    </div>
                </div>

            </div>



            <!-- Copyrights -->
            <div class="row">
                <div class="col-md-12">
                    <div class="copyrights"> &copy; Theme by Purethemes.net. All Rights Reserved.</div>
                </div>
            </div>

        </div>
    </div>
    <!-- Dashboard / End -->
    <script type="text/javascript">
        (function () {
        var c = document.body.className;
        c = c.replace(/woocommerce-no-js/, 'woocommerce-js');
        document.body.className = c;
        })();
    </script>
    <script type='text/javascript' id='contact-form-7-js-extra'>
        /* <![CDATA[ */
        var wpcf7 = {"api":{"root":"https:\/\/workscout.in\/wp-json\/", "namespace":"contact-form-7\/v1"}, "cached":"1"};
        /* ]]> */
    </script>
    <script type='text/javascript' src='https://workscout.in/wp-content/plugins/contact-form-7/includes/js/index.js' id='contact-form-7-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js' id='jquery-blockui-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min.js' id='js-cookie-js'></script>
    <script type='text/javascript' id='woocommerce-js-extra'>
        /* <![CDATA[ */
        var woocommerce_params = {"ajax_url":"\/wp-admin\/admin-ajax.php", "wc_ajax_url":"\/?wc-ajax=%%endpoint%%"};
        /* ]]> */
    </script>
    <script type='text/javascript' src='https://workscout.in/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min.js' id='woocommerce-js'></script>
    <script type='text/javascript' id='wc-cart-fragments-js-extra'>
        /* <![CDATA[ */
        var wc_cart_fragments_params = {"ajax_url":"\/wp-admin\/admin-ajax.php", "wc_ajax_url":"\/?wc-ajax=%%endpoint%%", "cart_hash_key":"wc_cart_hash_9fb1884e805528cacb8489f37bf04ef3", "fragment_name":"wc_fragments_9fb1884e805528cacb8489f37bf04ef3", "request_timeout":"5000"};
        /* ]]> */
    </script>
    <script type='text/javascript' src='https://workscout.in/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min.js' id='wc-cart-fragments-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-content/plugins/woocommerce/assets/js/select2/select2.full.min.js' id='select2-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-includes/js/jquery/ui/core.min.js' id='jquery-ui-core-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-includes/js/jquery/ui/menu.min.js' id='jquery-ui-menu-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-includes/js/dist/dom-ready.min.js' id='wp-dom-ready-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-includes/js/dist/i18n.min.js' id='wp-i18n-js'></script>
    <script type='text/javascript' id='wp-i18n-js-after'>
        wp.i18n.setLocaleData({ 'text direction\u0004ltr': [ 'ltr' ] });
    </script>
    <script type='text/javascript' id='wp-a11y-js-translations'>
        (function(domain, translations) {
        var localeData = translations.locale_data[ domain ] || translations.locale_data.messages;
        localeData[""].domain = domain;
        wp.i18n.setLocaleData(localeData, domain);
        })("default", { "locale_data": { "messages": { "": {} } } });
    </script>
    <script type='text/javascript' src='https://workscout.in/wp-includes/js/dist/a11y.min.js' id='wp-a11y-js'></script>
    <script type='text/javascript' id='jquery-ui-autocomplete-js-extra'>
        /* <![CDATA[ */
        var uiAutocompleteL10n = {"noResults":"No results found.", "oneResult":"1 result found. Use up and down arrow keys to navigate.", "manyResults":"%d results found. Use up and down arrow keys to navigate.", "itemSelected":"Item selected."};
        /* ]]> */
    </script>
    <script type='text/javascript' src='https://workscout.in/wp-includes/js/jquery/ui/autocomplete.min.js' id='jquery-ui-autocomplete-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-includes/js/jquery/ui/mouse.min.js' id='jquery-ui-mouse-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-includes/js/jquery/ui/sortable.min.js' id='jquery-ui-sortable-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-content/themes/workscout/js/skip-link-focus-fix.min.js' id='workscout-skip-link-focus-fix-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-includes/js/jquery/ui/slider.min.js' id='jquery-ui-slider-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-content/themes/workscout/js/slick.min.js' id='slick-min-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-content/themes/workscout/js/hoverIntent.min.js' id='workscout-hoverIntent-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-content/themes/workscout/js/jquery.counterup.min.js' id='workscout-counterup-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-content/themes/workscout/js/jquery.flexslider-min.js' id='workscout-flexslider-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-content/themes/workscout/js/jquery.gmaps.min.js' id='workscout-gmaps-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-content/themes/workscout/js/jquery.isotope.min.js' id='workscout-isotope-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-content/themes/workscout/js/jquery.magnific-popup.min.js' id='workscout-magnific-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-content/themes/workscout/js/jquery.superfish.min.js' id='workscout-superfish-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-content/themes/workscout/js/stacktable.min.js' id='workscout-stacktable-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-content/themes/workscout/js/waypoints.min.js' id='workscout-waypoints-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-content/themes/workscout/js/headroom.min.js' id='workscout-headroom-js'></script>
    <script type='text/javascript' id='workscout-custom-js-extra'>
        /* <![CDATA[ */
        var ws = {"logo":"https:\/\/workscout.in\/wp-content\/uploads\/2019\/11\/logo.png", "retinalogo":"https:\/\/workscout.in\/wp-content\/uploads\/2019\/11\/logo.png", "transparentlogo":"https:\/\/workscout.in\/wp-content\/uploads\/2019\/11\/logo2.png", "transparentretinalogo":"https:\/\/workscout.in\/wp-content\/uploads\/2019\/11\/logo2.png", "ajaxurl":"\/wp-admin\/admin-ajax.php", "theme_color":"#26ae61", "woo_account_page":"https:\/\/workscout.in\/my-account\/", "theme_url":"https:\/\/workscout.in\/wp-content\/themes\/workscout", "header_breakpoint":"1290", "no_results_text":"No results match", "menu_back":"Back"};
        /* ]]> */
    </script>
    <script type='text/javascript' src='https://workscout.in/wp-content/themes/workscout/js/custom.min.js' id='workscout-custom-js'></script>
    <script type='text/javascript' src='https://workscout.in/wp-content/plugins/wp-job-manager-locations/assets/js/main.min.js' id='job-regions-js'></script>
    <script type="text/javascript">
        (function($){


        $(document).ready(function(){

        $('.sc-jobs #search_keywords, .sc-jobs #intro-keywords').autocomplete({

        source: function(req, response){
        $.getJSON('https://workscout.in/wp-admin/admin-ajax.php' + '?callback=?&action=workscout_incremental_jobs_suggest', req, response);
        },
                select: function(event, ui) {
                window.location.href = ui.item.link;
                },
                minLength: 3,
        });
        });
        })(this.jQuery);
    </script>    <script type="text/javascript">
        (function($){


        $(document).ready(function(){

        $('.sc-resumes #search_keywords,.sc-resumes #intro-keywords').autocomplete({

        source: function(req, response){
        $.getJSON('https://workscout.in/wp-admin/admin-ajax.php' + '?callback=?&action=workscout_incremental_resumes_suggest', req, response);
        },
                select: function(event, ui) {
                window.location.href = ui.item.link;
                },
                minLength: 3,
        });
        });
        })(this.jQuery);


    </script>
</body>
</html>
