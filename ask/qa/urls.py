from django.conf.urls import include, url

urlpatterns = [ 
	url(r'^$', views.test, name="index"),
]