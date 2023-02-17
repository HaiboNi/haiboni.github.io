
<div class="row" markdown="1">


<div class="col-md-8 col-ms-8">

<h3> News </h3>
<ul>
  {% for post in site.posts limit: 5 %}
    <li><a href="{{ post.url }}"><b>{{ post.title }}</b></a></li>
  {% endfor %}
</ul>


</div>

<div class="col-md-4 col-ms-4">

### Contact

 Haibo Ni Ph.D.    
Assistant Project Scientist   
Department of Pharmacology  
School of Medicine  
University of California, Davis  
email: hbni AT ucdavis dot edu
</div>







</div>
