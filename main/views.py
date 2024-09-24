from django.shortcuts import render
import os
# Create your views here.
def home(request):
    test = os.getenv('TEST')
    print(test)
    return render(request, test, 'home.html')