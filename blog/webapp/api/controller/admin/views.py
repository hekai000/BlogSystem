# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.http import HttpResponse
import json
# Create your views here.
def validate_admin(request):
    res = {"ret": True}
    return HttpResponse(json.dumps(res)) 
    
