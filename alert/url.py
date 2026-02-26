from django.urls import path,re_path
from alert import views
urlpatterns=[
    path('post_alert/',views.post_alert),
    path('view_alert/',views.view_alert)
]