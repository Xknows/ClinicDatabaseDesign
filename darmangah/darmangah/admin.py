from django.contrib import admin
from . import models

@admin.register(models.Morajegar)
class MorajegarAdmin(admin.ModelAdmin):
    list_display = ['name','age','doctor','vazaeat','aksbardari']
    # ordering =['lastname']
    list_per_page = 10

    # # @admin.display()
    def vazaeat(self,morajegar):
        return morajegar.codemeli.nobatid.bimaritype

    def aksbardari(self,morajegar):
        ss = morajegar.codemeli.nobatid.nobatid.akstype
        return  ss

    def qqq(self,morajegar):
        # ss = morajegar.codemeli.nobatid.bimaristate.erjatype
        ss = morajegar.codemeli.doctorlastname
        return  ss

    def doctor(self,morajegar):
        return morajegar.codemeli.doctorlastname


    # def get_queryset(self, request):
    #     return super().get_queryset(request).select_related('codemeli')

admin.site.register(models.Doctor)
