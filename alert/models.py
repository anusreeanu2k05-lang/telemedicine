from django.db import models
from user_registor.models import User
# Create your models here.
class Alert(models.Model):
    alert_id = models.AutoField(primary_key=True)
    # user_id = models.IntegerField()
    user=models.ForeignKey(User,on_delete=models.CASCADE)
    alert = models.CharField(max_length=50)
    date = models.DateField()
    time = models.TimeField()

    class Meta:
        managed = False
        db_table = 'alert'

