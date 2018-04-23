from __future__ import unicode_literals
from django.db import models


class OcActivity(models.Model):
    activity_id = models.AutoField(primary_key=True)
    timestamp = models.IntegerField()
    priority = models.IntegerField()
    type = models.CharField(max_length=255, blank=True, null=True)
    user = models.CharField(max_length=64, blank=True, null=True)
    affecteduser = models.CharField(max_length=64)
    app = models.CharField(max_length=255)
    subject = models.CharField(max_length=255)
    subjectparams = models.CharField(max_length=4000)
    message = models.CharField(max_length=255, blank=True, null=True)
    messageparams = models.CharField(max_length=4000, blank=True, null=True)
    file = models.CharField(max_length=4000, blank=True, null=True)
    link = models.CharField(max_length=4000, blank=True, null=True)
    object_type = models.CharField(max_length=255, blank=True, null=True)
    object_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'oc_activity'

    def __unicode__(self):
        return self.user


class Actions(models.Model):
    name = models.CharField(max_length=100)

    class Meta:
        managed = True
        db_table = 'actions'

    def __unicode__(self):
        return self.name
