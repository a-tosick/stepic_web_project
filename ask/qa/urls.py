from ask.views import urlpatterns

urlpatterns = patterns('ask.views',
    url(r'^', 'qa.views.test', name='test'),
)
