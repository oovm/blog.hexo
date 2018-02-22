{% if not post.nocopyright %}

<!--div class="post-copyright">
  style="text-align:center;color: #ccc;font-size:14px;">
------ 本文结束 ------
</div-->

<ul class="post-copyright">
  <span style="font-weight:blod">版权声明</span>
  <img src="/images/Copyright_CC.png" >

  <!--li class="post-copyright-link">
    <strong>本文作者：</strong>
    <a href="/" title="欢迎访问 {{ theme.author }} 的个人博客">{{ theme.author }}</a>
  </li-->

  <!--li class="post-copyright-link">
    <strong>本文标题：</strong>
    <a href="{{ url_for(post.permalink) }}" title="{{ post.title }}">{{ post.title }}</a>
  </li-->

  <li class="post-copyright-link">
    <strong>本文链接：</strong><a href="{{url_for(post.permalink) }}" title="{{ post.title }}">{{ post.permalink }}</a>
    <br>
    <strong>发布时间：</strong>{{ post.date.format("YYYY年M月D日 - HH时MM分") }}
  </li>

  <strong>版权声明： </strong>
  <li class="post-copyright-license"><p>
    本文由 <a href="/" title="欢迎访问 {{ theme.author }} 的个人博客">{{ theme.author }}</a> 创作，采用
    <a href="https://creativecommons.org/licenses/by-nc-nd/4.0/deed.zh" rel="license" target="_blank">Creative Commons BY-NC-ND 4.0 International License</a>
    协议授权, 如需转载, 请使用页面左边分享功能. <strong>转载请保留以上声明信息, 谢谢合作!</strong>
  </p></li>
</ul>
{% endif %}
