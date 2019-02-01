<div class="navbar">
    <div class="navbar-inner">
      <div class="container" style="width: auto;">
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </a>
        {{ link_to('_phalcon/vokuro/', 'class': 'brand', 'Vökuró')}}
        <div class="nav-collapse">
          <ul class="nav">

            {%- set menus = [
              'Home': '_phalcon/vokuro/',
              'About': '_phalcon/vokuro/about'
            ] -%}

            {%- for key, value in menus %}
              {% if value == dispatcher.getControllerName() %}
              <li class="active">{{ link_to(value, key) }}</li>
              {% else %}
              <li>{{ link_to(value, key) }}</li>
              {% endif %}
            {%- endfor -%}

          </ul>

          <ul class="nav pull-right">
            {%- if logged_in is defined and not(logged_in is empty) -%}
            <li>{{ link_to('_phalcon/vokuro/users', 'Users Panel') }}</li>
            <li>{{ link_to('_phalcon/vokuro/session/logout', 'Logout') }}</li>
            {% else %}
            <li>{{ link_to('_phalcon/vokuro/session/login', 'Login') }}</li>
            {% endif %}
          </ul>
        </div><!-- /.nav-collapse -->
      </div>
    </div><!-- /navbar-inner -->
  </div>

<div class="container main-container">
  {{ content() }}
</div>

<footer>
Made with love by the Phalcon Team

    {{ link_to("_phalcon/vokuro/privacy", "Privacy Policy") }}
    {{ link_to("_phalcon/vokuro/terms", "Terms") }}

© {{ date("Y") }} Phalcon Team.
</footer>
