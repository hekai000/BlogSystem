"""blog URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.conf.urls import include
from views import index 

urlpatterns = [url(r'^$', index, name='index'),
    url(r'^blog/api/',include('webapp.urls'), name='blog'),
    #url(r'^blog/home/admin/$', deal_home_admin, name='home_admin'),
    #url(r'^blog/home/user/$', deal_home_user, name='home_user'),
    #url(r'^blog/login/admin/$', deal_login_admin, name='login_admin'),
    #url(r'^blog/login/user/$', deal_login_user, name='login_user'),
    #url(r'^blog/register/$', deal_register_user, name='register_user'),
]
