from django.shortcuts import render

def homepage(request):
    return render(request, 'homepage.html')

def discussions(request):
    return render(request, 'discussions.html')

def portrait(request):
    return render(request, "portrait.html")
