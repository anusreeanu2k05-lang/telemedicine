# from django.shortcuts import render
# from alert.models import Alert
# import datetime
# # Create your views here.
# def post_alert(request):
#     ss=request.session['u_id']
#     if request.method=='POST':
#         obj=Alert()
#         obj.user_id=ss
#         obj.alert=request.POST.get('ALERT')
#         obj.date=datetime.datetime.today()
#         obj.time=datetime.datetime.now()
#         obj.save()
#
#     return render(request,'alert/post_alert.html')

from django.shortcuts import render
from alert.models import Alert
import datetime

# Create your views here.
def post_alert(request):
    ss = request.session.get('u_id')  # safer to use .get
    success = False  # flag to track submission

    if request.method == 'POST':
        obj = Alert()
        obj.user_id = ss
        obj.alert = request.POST.get('ALERT')
        obj.date = datetime.date.today()  # only the date part
        obj.time = datetime.datetime.now().time()  # only the time part
        obj.save()
        success = True  # set success flag after saving

    return render(request, 'alert/post_alert.html', {'success': success})

def view_alert(request):
    obj=Alert.objects.all()
    context={
        'ok': obj
    }

    return render(request,'alert/view_alert.html',context)