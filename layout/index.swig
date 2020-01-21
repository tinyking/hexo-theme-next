{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block title %}{{ config.title }}{% if theme.index_with_subtitle and config.subtitle %} - {{config.subtitle }}{% endif %}{% endblock %}

{% block page_class %}
  {% if is_home() %}page-home{% endif -%}
{% endblock %}

<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <!-- 单元1 -->
    <ins class="adsbygoogle"
        style="display:block"
        data-ad-client="ca-pub-9508321495212724"
        data-ad-slot="3221759322"
        data-ad-format="auto"
        data-full-width-responsive="true"></ins>
<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
</script>

{% block content %}
  <section id="posts" class="posts-expand">
    {% for post in page.posts %}
      {{ post_template.render(post, true) }}
    {% endfor %}
  </section>

  {% include '_partials/pagination.swig' %}
{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
