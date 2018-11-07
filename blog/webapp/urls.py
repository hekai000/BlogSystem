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
from django.conf.urls import url,include

import sys
sys.path.append("/var/www/blog/webapp")
urlpatterns = [
    url(r'^admin/', include('api.controller.admin.urls'), name='admins_management'),
    # TODO
    # url(r'^user/', include('api.controller.user.urls'), name='users_management'),
    # url(r'^article/', include('api.controller.article.urls'), name='articles_management'),
    # url(r'^tag/', include('api.controller.tag.urls'), name='tags_management'),
    # url(r'^comment/', include('api.controller.comment.urls'), name='comments_management'),
    # url(r'^reply/', include('api.controller.reply.urls'), name='replys_management'),
    # url(r'^category/', include('api.controller.category.urls'), name='categorys_management'),
]
