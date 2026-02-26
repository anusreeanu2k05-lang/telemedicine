from django.db import models
# Create your models here.
class Ambulance(models.Model):
    ambulance_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=45)
    contact = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'ambulance'

