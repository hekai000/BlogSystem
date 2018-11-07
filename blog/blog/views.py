# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

def index(request, template="index.html"):
    return render(request, template)

def deal_home_admin(request, template='home_admin.html'):
	"""
	home_admin
	"""
	return render(request, template)

def deal_home_user(request, template='home_user.html'):
	"""
	home_user
	"""
	return render(request, template)

def deal_login_admin(request, template='login_admin.html'):
	"""
	login_admin
	"""
	return render(request, template)

def deal_login_user(request, template='login_user.html'):
	"""
	login_user
	"""
	return render(request, template)

def deal_register_user(request, template='register_user.html'):
	"""
	register_user
	"""
	return render(request, template)
