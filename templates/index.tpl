<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><%= site.name %></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" value="Perf Tooling Today lists a lot of tools that can be used to make the web faster, because performance matters!">
    <style><%= css %></style>
  </head>
  <body>
    <div class="svgIcons"><%= svg %></div>
    <div class="container">
      <div class="site">
        <header class="clearfix">
          <a href="https://github.com/stefanjudis/perf-tooling" class="ribbon">Fork it on Github</a>
          <img class="logo" src="<%= cdn %>/perf-tooling.svg">
          <h1 class="title"><%= site.name %></h1>
          <nav>
            <ul class="nav--list">
              <li class="nav--list--item"><a href="/">Start</a>
              <li class="nav--list--item"><a href="/tools">Tools</a>
              <li class="nav--list--item"><a href="/articles">Articles</a>
              <li class="nav--list--item"><a href="/videos">Videos</a>
              <li class="nav--list--item"><a href="/slides">Slides</a>
            </ul>
          </nav>
        </header>
        <div>
          <div class="fuzzy">
            <input class="fuzzy--input" placeholder="Search all <%= tools.length%> tools">
          </div>
          <ul class="posts">
            <% _.each( tools, function( tool ) { %>
              <li id="<%= tool.name.replace( ' ', '-' ) %>">
                <h3><%= tool.name %></h3>
                <div class="posts--content"><%= tool.description %></div>
                <ul class="resources">
                  <% if ( tool.bookmarklet ) { %>
                    <li class="tooltip" title="Bookmarklet">
                      <a href="<%= tool.bookmarklet %>" class="bookmarklet">
                        <svg>
                          <use xlink:href="#icon-bookmarklet" />
                        </svg>
                        Bookmarklet
                      </a>

                      <span><%= ( tool.stars.bookmarklet ) ? tool.stars.bookmarklet : 'N/A' %></span>
                  <% } %>

                  <% if ( tool.chrome ) { %>
                    <li class="tooltip" title="Chrome extension">
                      <a href="<%= tool.chrome %>" class="chrome">
                        <svg>
                          <use xlink:href="#icon-chrome" />
                        </svg>
                        Chrome extension
                      </a>

                      <span><%= ( tool.stars.chrome ) ? tool.stars.chrome : 'N/A' %></span>
                  <% } %>

                  <% if ( tool.cli ) { %>
                    <li class="tooltip" title="CLI">
                      <a href="<%= tool.cli %>" class="cli">
                        <svg>
                          <use xlink:href="#icon-cli" />
                        </svg>
                        CLI
                      </a>

                      <span><%= ( tool.stars.cli ) ? tool.stars.cli : 'N/A' %></span>
                  <% } %>

                  <% if ( tool.module ) { %>
                    <li class="tooltip" title="Node module">
                      <a href="<%= tool.module %>" class="module">
                        <svg>
                          <use xlink:href="#icon-module" />
                        </svg>
                        Node module
                      </a>

                      <span><%= ( tool.stars.module ) ? tool.stars.module : 'N/A' %></span>
                  <% } %>

                  <% if ( tool.grunt ) { %>
                    <li class="tooltip" title="Grunt plugin">
                      <a href="<%= tool.grunt %>" class="grunt">
                        <svg>
                          <use xlink:href="#icon-grunt" />
                        </svg>
                        Grunt plugin
                      </a>

                      <span><%= ( tool.stars.grunt ) ? tool.stars.grunt : 'N/A' %></span>
                  <% } %>

                  <% if ( tool.gulp ) { %>
                    <li class="tooltip" title="gulp plugin">
                      <a href="<%= tool.gulp %>" class="gulp">
                        <svg>
                          <use xlink:href="#icon-gulp" />
                        </svg>
                        gulp plugin
                      </a>

                      <span><%= ( tool.stars.gulp ) ? tool.stars.gulp : 'N/A' %></span>
                  <% } %>

                  <% if ( tool.script ) { %>
                    <li class="tooltip" title="Script">
                      <a href="<%= tool.script %>" class="script">
                        <svg>
                          <use xlink:href="#icon-script" />
                        </svg>
                        Script
                      </a>

                      <span><%= ( tool.stars.script ) ? tool.stars.script : 'N/A' %></span>
                  <% } %>

                  <% if ( tool.service ) { %>
                    <li class="tooltip" title="Service">
                      <a href="<%= tool.service %>" class="service">
                        <svg>
                          <use xlink:href="#icon-service" />
                        </svg>
                        Service
                      </a>

                      <span><%= ( tool.stars.service ) ? tool.stars.service : 'N/A' %></span>
                  <% } %>
                </ul>
                <% if ( tool.tags && tool.tags.length ) { %>
                  <ul class="tags">
                    <% _.each( tool.tags, function( tag ) { %>
                      <li><%= tag %>
                    <% } );%>
                  </ul>
                <% }%>
            <% } );%>
          </ul>
        </div>
        <footer role="contentinfo">
          <div class="contact">
            <p>Brought to you by the performance community</p>
            <p><a href="https://twitter.com/search?q=%23perfmatters&src=typd" class="hashTag">#perfmatters</a></p>
            <p>Icons by <a href="http://thenounproject.com/" class="noun">The Noun Project</a></p>
            <p>Built by Stefan Judis...</p>
            <ul class="socials">
              <li><a href="http://github.com/stefanjudis/"><svg x="0px" y="0px" viewBox="0 0 48 48" enable-background="new 0 0 48 48" xml:space="preserve" width="32" height="32">
                <linearGradient id="SVGID_1_1" gradientUnits="userSpaceOnUse" x1="23.9995" y1="0" x2="23.9995" y2="48.0005">
                  <stop  offset="0" style="stop-color:#FFFFFF"/>
                  <stop  offset="1" style="stop-color:#EAEAEA"/>
                </linearGradient>
                <path fill-rule="evenodd" clip-rule="evenodd" fill="url(#SVGID_1_1)" d="M48,42c0,3.313-2.687,6-6,6H6c-3.313,0-6-2.687-6-6V6
                  c0-3.313,2.687-6,6-6h36c3.313,0,6,2.687,6,6V42z"/>
                <path fill-rule="evenodd" clip-rule="evenodd" fill="none" d="M27.695,29.811c0,0,1.519,5.062,5.974,4.05
                  c4.456-1.013,4.759-6.684,2.127-9.619C33.163,21.305,26.379,25.962,27.695,29.811z"/>
                <path fill-rule="evenodd" clip-rule="evenodd" d="M11.828,18.179c0,0-3.344,3.499-2.763,9.192
                  c0.581,5.694,4.186,10.392,16.208,10.392c12.021,0,15.045-6.275,15.116-11.436c0.071-5.159-2.253-7.46-3.344-8.243
                  c0,0,0.007-3.704-0.343-5.661c0,0-1.85-0.219-5.845,2.07c0,0-5.454-0.533-12.722,0.065c0,0-3.053-2.04-6.129-2.574
                  C12.006,11.984,11.496,15.196,11.828,18.179z"/>
                <path fill-rule="evenodd" clip-rule="evenodd" fill="#E2B89F" d="M17.211,23.815h14.916c0,0,4.227-0.475,4.227,6.44
                  c0.034,6.086-11.139,5.693-11.139,5.693s-12.236,0.486-12.243-6.269C12.956,23.579,17.211,23.815,17.211,23.815z"/>
                <g>
                  <g>
                    <path fill-rule="evenodd" clip-rule="evenodd" fill="#9C584F" d="M30.767,26.591c0.959,0,1.737,1.25,1.737,2.787
                      c0,1.54-0.778,2.788-1.737,2.788c-0.958,0-1.736-1.248-1.736-2.788C29.03,27.841,29.809,26.591,30.767,26.591z"/>
                    <path fill="#FFFFFF" d="M30.767,32.666c-1.254,0-2.236-1.444-2.236-3.288c0-1.843,0.982-3.287,2.236-3.287
                      c1.255,0,2.237,1.444,2.237,3.287C33.004,31.222,32.021,32.666,30.767,32.666z M30.767,27.091c-0.585,0-1.236,0.939-1.236,2.287
                      c0,1.349,0.651,2.288,1.236,2.288s1.237-0.939,1.237-2.288C32.004,28.03,31.352,27.091,30.767,27.091z"/>
                  </g>
                </g>
                <g>
                  <g>
                    <path fill-rule="evenodd" clip-rule="evenodd" fill="#9C584F" d="M18.767,26.591c0.959,0,1.737,1.25,1.737,2.787
                      c0,1.54-0.778,2.788-1.737,2.788c-0.958,0-1.736-1.248-1.736-2.788C17.03,27.841,17.809,26.591,18.767,26.591z"/>
                    <path fill="#FFFFFF" d="M18.767,32.666c-1.254,0-2.236-1.444-2.236-3.288c0-1.843,0.982-3.287,2.236-3.287
                      c1.254,0,2.237,1.444,2.237,3.287C21.004,31.222,20.021,32.666,18.767,32.666z M18.767,27.091c-0.585,0-1.236,0.939-1.236,2.287
                      c0,1.349,0.651,2.288,1.236,2.288c0.585,0,1.237-0.939,1.237-2.288C20.004,28.03,19.352,27.091,18.767,27.091z"/>
                  </g>
                </g>
                <path fill-rule="evenodd" clip-rule="evenodd" fill="#9C584F" d="M24.076,32.705c0,0,0.499-1.418,1.109-0.089
                  c0,0-0.457,0.297-0.285,0.996l1.428,0.546h-3.23l1.28-0.575C24.378,33.583,24.562,32.527,24.076,32.705z"/>
                </svg>github.com/stefanjudis</a>
              <li><a href="http://twitter.com/stefanjudis/"><svg x="0px" y="0px" viewBox="0 0 48 48" enable-background="new 0 0 48 48" xml:space="preserve" width="32" height="32">
              <linearGradient id="SVGID_1_2" gradientUnits="userSpaceOnUse" x1="23.9995" y1="0" x2="23.9995" y2="48.0005">
                <stop  offset="0" style="stop-color:#4BD0EF"/>
                <stop  offset="1" style="stop-color:#29AAE1"/>
              </linearGradient>
              <path fill-rule="evenodd" clip-rule="evenodd" fill="url(#SVGID_1_2)" d="M48,42c0,3.313-2.687,6-6,6H6c-3.313,0-6-2.687-6-6V6
                c0-3.313,2.687-6,6-6h36c3.313,0,6,2.687,6,6V42z"/>
              <path fill="#29AAE1" d="M40.231,13.413c-1.12,0.497-2.323,0.833-3.588,0.984c1.291-0.774,2.28-1.998,2.747-3.457
                c-1.206,0.716-2.543,1.236-3.968,1.516c-1.139-1.214-2.763-1.972-4.56-1.972c-3.449,0-6.246,2.796-6.246,6.247
                c0,0.49,0.055,0.966,0.161,1.424c-5.192-0.261-9.795-2.749-12.876-6.528c-0.538,0.923-0.846,1.996-0.846,3.141
                c0,2.167,1.103,4.08,2.779,5.199c-1.024-0.032-1.987-0.313-2.83-0.781c0,0.026,0,0.053,0,0.079c0,3.026,2.153,5.551,5.011,6.125
                c-0.525,0.143-1.076,0.219-1.646,0.219c-0.403,0-0.794-0.038-1.176-0.11c0.795,2.48,3.102,4.287,5.835,4.338
                c-2.138,1.675-4.832,2.675-7.758,2.675c-0.504,0-1.002-0.03-1.491-0.089c2.765,1.773,6.048,2.808,9.576,2.808
                c11.49,0,17.774-9.519,17.774-17.774c0-0.271-0.006-0.54-0.019-0.809C38.334,15.766,39.394,14.666,40.231,13.413z"/>
              <path fill="#FFFFFF" d="M40.231,14.739c-1.12,0.497-2.323,0.833-3.588,0.984c1.291-0.773,2.28-1.998,2.747-3.456
                c-1.206,0.716-2.543,1.236-3.968,1.516c-1.139-1.214-2.763-1.972-4.56-1.972c-3.449,0-6.246,2.796-6.246,6.247
                c0,0.489,0.055,0.966,0.161,1.424c-5.192-0.261-9.795-2.748-12.876-6.527c-0.538,0.923-0.846,1.996-0.846,3.141
                c0,2.167,1.103,4.079,2.779,5.199c-1.024-0.032-1.987-0.313-2.83-0.781c0,0.026,0,0.052,0,0.079c0,3.027,2.153,5.551,5.011,6.125
                c-0.525,0.144-1.076,0.219-1.646,0.219c-0.403,0-0.794-0.038-1.176-0.11c0.795,2.481,3.102,4.287,5.835,4.338
                c-2.138,1.676-4.832,2.675-7.758,2.675c-0.504,0-1.002-0.03-1.491-0.089c2.765,1.773,6.048,2.808,9.576,2.808
                c11.49,0,17.774-9.519,17.774-17.774c0-0.271-0.006-0.54-0.019-0.808C38.334,17.092,39.394,15.992,40.231,14.739z"/>
              </svg>twitter.com/stefanjudis</a>

              <li><a href="mailto:stefanjudis@gmail.com"><svg x="0px" y="0px" viewBox="176 76 48 48" enable-background="new 176 76 48 48" xml:space="preserve" width="32" height="32">
              <linearGradient id="SVGID_1_3" gradientUnits="userSpaceOnUse" x1="71.3662" y1="132.875" x2="71.3662" y2="121.375" gradientTransform="matrix(4.1667 0 0 -4.1667 -97.3177 629.646)">
                <stop  offset="0" style="stop-color:#F5F5F5"/>
                <stop  offset="0.2762" style="stop-color:#EEEEEE"/>
                <stop  offset="0.6676" style="stop-color:#DCDCDC"/>
                <stop  offset="0.8292" style="stop-color:#D2D2D2"/>
              </linearGradient>
              <path fill="url(#SVGID_1_3)" d="M224,117.928c0,3.307-2.683,5.989-5.989,5.989h-35.938c-3.308,0-5.99-2.683-5.99-5.989V81.99
                c0-3.307,2.682-5.99,5.99-5.99h35.938c3.307,0,5.989,2.683,5.989,5.99V117.928z"/>
              <path opacity="0.05" d="M220.654,121.186c-0.104-0.131-0.207-0.265-0.305-0.412c-0.99-1.499-1.969-3.048-2.954-4.606
                c-1.339-1.896-2.66-3.772-4.264-5.465c-0.733-0.773-1.146-1.613-1.314-2.454c-1.72-2.369-3.482-4.706-5.353-6.963
                c-0.149-0.181-0.28-0.365-0.4-0.551c-0.394-0.401-0.774-0.816-1.183-1.199c-0.098-0.091-0.181-0.186-0.269-0.28
                c-0.658,0.56-1.299,1.147-1.911,1.779c-2.291,2.361-5.245,1.679-7-0.167c-0.087,0.001-0.174-0.008-0.262-0.009
                c-0.911,1.021-1.82,2.047-2.717,3.095c-1.676,1.96-3.278,3.979-4.892,5.987c-0.956,1.659-2.282,3.056-3.609,4.44
                c-0.124,0.376-0.264,0.751-0.49,1.056c-0.278,0.377-0.563,0.748-0.856,1.113c-0.19,0.149-0.383,0.295-0.574,0.442
                c-1.148,2.009-2.527,3.826-4.053,5.543c1.038,0.861,2.37,1.381,3.824,1.381h35.938c1.358,0,2.593-0.475,3.597-1.237
                C221.196,122.246,220.879,121.737,220.654,121.186z"/>
              <path opacity="0.4" fill="#FFFFFF" d="M179.808,84.909c1.984,1.965,4,3.664,5.802,5.738l0.176,0.151l-0.025,0.019
                c0.234,0.274,0.462,0.557,0.688,0.846c3.334,3.101,7.497,5.558,10.63,8.936c0.82,0.884,1.918,2.05,2.867,3.349
                c0.228-0.747,0.688-1.481,1.436-2.148c4.773-4.259,9.473-8.611,14.184-12.937c2.618-2.405,5.312-5.342,8.413-7.288
                c-0.214-3.112-2.802-5.574-5.968-5.574h-35.938c-3.079,0-5.612,2.324-5.949,5.312C177.415,82.353,178.479,83.592,179.808,84.909z"/>
              <polygon fill="#BCBCBC" points="176.115,81.374 200,101.959 223.969,81.374 200,105.25 "/>
              <polygon fill="#BCBCBC" points="221.672,122.718 204.188,100.75 205.969,99.094 "/>
              <polygon fill="#BCBCBC" points="178.346,122.718 196.031,100.812 194.375,99.094 "/>
              </svg>stefanjudis@gmail.com</a>
            </ul>
            <div id="contributors">
              <% if( contributors ) { %>
                <p>...with a little help from his friends:</p>
                <ul>
                  <% _.each( contributors, function( contrib ) { %>
                    <% if ( contrib.login !== 'stefanjudis' ) { %>
                      <li class="contributor"><a href="<%= contrib.url.replace( 'api.','' ).replace( 'users/','' ) %>" data-url="<%= contrib.avatar_url + '&s=42' %>" data-login="<%= contrib.login %>"></a></li>
                    <% } %>
                  <% } ) %>
                </ul>
              <% } %>
            </div>
            <div class="sponsor">
              Sponsored by
              <a href="https://www.fastly.com/"><img src="<%= cdn %>/fastly.svg" alt="Logo of CDN Fastly"></a>
            </div>
          </div>
        </div>
      </footer>
    </div> <!-- /container -->
    <script>
      <%
        var flattenTools = [];

        for ( var type in tools ) {
          if ( tools.hasOwnProperty( type ) ) {
            for ( var tool in tools[ type ] ) {
              if ( tools[ type ].hasOwnProperty( tool ) ) {
                flattenTools.push( tools[ type ][ tool ] );
              }
            }
          }
        }
      %>
      window.tools = <%= JSON.stringify( flattenTools ) %>;
    </script>
    <script src="<%= cdn %>/tooling.js?<%= hash.js %>" async></script>
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-53831300-1', 'auto');
      ga('send', 'pageview');
    </script>
  </body>
</html>
