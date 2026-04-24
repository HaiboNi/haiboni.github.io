
<div class="row" markdown="1">


<div class="col-md-8 col-ms-8">

<h3> News </h3>
<ul>
  {% for post in site.posts limit: 7 %}
    <li><a href="{{ post.url }}"><b>{{ post.title }}</b></a></li>
  {% endfor %}
</ul>


</div>

<div class="col-md-4 col-ms-4">

### Contact

 Haibo Ni, Ph.D.    
Associate Professor   
Medical School  
Nanjing University  
China  
email: hni AT nju.edu.cn
</div>







</div>
