from django.shortcuts import render


def userInfo(request):
    return render(request, "user/userInfo.html")

def userInfo2(request,uid):
    return render(request, "user/userInfo.html")