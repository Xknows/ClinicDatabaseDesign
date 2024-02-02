from django.db import models


class Aksbardari(models.Model):

    nobatid = models.IntegerField(db_column='nobatID', primary_key=True)
    akstype = models.CharField(db_column='aksType', max_length=11)
    karmandid = models.ForeignKey(
        'Karmand', models.DO_NOTHING, db_column='karmandID')

    class Meta:
        managed = False
        db_table = 'Aksbardari'


class Bazneshastegi(models.Model):

    bazneshateid = models.BigIntegerField(
        db_column='bazneshateID', primary_key=True)
    karmandpersonlyid = models.ForeignKey(
        'Karmand', models.DO_NOTHING, db_column='karmandPersonlyID')
    bazneshastestatus = models.CharField(
        db_column='bazneshasteStatus', max_length=3)
    daramad = models.DecimalField(
        db_column='Daramad', max_digits=19, decimal_places=4, blank=True, null=True)
    zamanbazneshastegi = models.CharField(
        db_column='zamanBazneshastegi', max_length=4)

    class Meta:
        managed = False
        db_table = 'Bazneshastegi'


class Bimarorganci(models.Model):

    codemeli = models.BigIntegerField(db_column='codeMeli', primary_key=True)
    bimaristatus = models.TextField(
        db_column='bimariStatus', blank=True, null=True)
    bimarorganciid = models.ForeignKey(
        'Organc', models.DO_NOTHING, db_column='bimarOrganciID')

    class Meta:
        managed = False
        db_table = 'BimarOrganci'


class Bimari(models.Model):
    nobatidpaziresh = models.IntegerField(
        db_column='nobatIDPaziresh', primary_key=True)
    bimaristate = models.ForeignKey(
        'Erja', models.DO_NOTHING, db_column='bimariState')
    bimaritype = models.CharField(db_column='bimariType', max_length=500)
    nobatid = models.ForeignKey(
        Aksbardari, models.DO_NOTHING, db_column='nobatID')

    class Meta:
        managed = False
        db_table = 'Bimari'


class Doctor(models.Model):

    lastname = models.CharField(
        db_column='lastName', primary_key=True, max_length=300)
    firstname = models.CharField(db_column='firstName', max_length=300)
    codenezampezeshki = models.ForeignKey(
        'Raeis', models.DO_NOTHING, db_column='codeNezamPezeshki')
    takhasos = models.CharField(max_length=200)
    sabege = models.SmallIntegerField()
    age = models.SmallIntegerField()

    def __str__(self) -> str:
        return self.lastname

    class Meta:
        managed = False
        db_table = 'Doctor'


class Erja(models.Model):

    raeischeked = models.IntegerField(db_column='raeisCheked')
    erjaaddress = models.TextField(
        db_column='erjaAddress', blank=True, null=True)
    erjatype = models.CharField(
        db_column='erjaType', max_length=8, blank=True, null=True)
    erjastatus = models.CharField(
        db_column='erjaStatus', primary_key=True, max_length=5)

    class Meta:
        managed = False
        db_table = 'Erja'


class Herasat(models.Model):

    residegiid = models.IntegerField(db_column='residegiID', primary_key=True)
    shekayatstatus = models.CharField(
        db_column='shekayatStatus', max_length=500)
    karmandid = models.ForeignKey(
        'Karmand', models.DO_NOTHING, db_column='karmandID')

    class Meta:
        managed = False
        db_table = 'Herasat'


class Karmand(models.Model):

    karmandid = models.IntegerField(db_column='karmandID', primary_key=True)
    mahalkar = models.CharField(db_column='mahalKar', max_length=50)
    sabege = models.SmallIntegerField()
    daramad = models.DecimalField(
        max_digits=19, decimal_places=4, blank=True, null=True)
    karmandmalyatid = models.ForeignKey(
        'Omormalyati', models.DO_NOTHING, db_column='karmandMalyatID', blank=True, null=True)
    bazneshaste = models.CharField(max_length=3)

    class Meta:
        managed = False
        db_table = 'Karmand'


class Morajegar(models.Model):
    codemeli = models.OneToOneField(
        'Paziresh', models.DO_NOTHING, db_column='codeMeli', primary_key=True)
    age = models.SmallIntegerField()
    firstname = models.CharField(db_column='firstName', max_length=100)
    lastname = models.CharField(db_column='lastName', max_length=300)

    # def __str__(self) -> str:
    #     return self.firstname + " " + self.lastname

    def name(self):
        return self.firstname + " " + self.lastname

    class Meta:
        managed = False
        db_table = 'Morajegar'
        unique_together = (('codemeli', 'codemeli', 'codemeli'),)
        ordering = ['lastname']


class Omormalyati(models.Model):

    karmandmalyatid = models.BigIntegerField(
        db_column='karmandMalyatID', primary_key=True)
    kasrimalyati = models.DecimalField(
        db_column='kasriMalyati', max_digits=19, decimal_places=4)

    class Meta:
        managed = False
        db_table = 'OmorMalyati'


class Organc(models.Model):

    organcpazireshid = models.IntegerField(
        db_column='organcPazireshID', primary_key=True)
    organcitype = models.TextField(
        db_column='organciType', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Organc'


class Paziresh(models.Model):

    nobatid = models.ForeignKey(Bimari, models.DO_NOTHING, db_column='nobatID')
    codemeli = models.BigIntegerField(db_column='codeMeli', primary_key=True)
    doctorlastname = models.ForeignKey(
        Doctor, models.DO_NOTHING, db_column='doctorLastName')
    karmandid = models.ForeignKey(
        Karmand, models.DO_NOTHING, db_column='karmandID')

    class Meta:
        managed = False
        db_table = 'Paziresh'


class Pharmacy(models.Model):

    nobatid = models.IntegerField(db_column='nobatID', primary_key=True)
    darooname = models.CharField(db_column='darooName', max_length=300)
    daroonumber = models.CharField(
        db_column='darooNumber', max_length=500, blank=True, null=True)
    karmandid = models.ForeignKey(
        Karmand, models.DO_NOTHING, db_column='karmandID')

    class Meta:
        managed = False
        db_table = 'Pharmacy'


class Raeis(models.Model):

    codenezampezeshki = models.BigIntegerField(
        db_column='codeNezamPezeshki', primary_key=True)
    vipid = models.IntegerField(db_column='VIPID')
    sabegeryasat = models.SmallIntegerField(db_column='sabegeRyasat')

    class Meta:
        managed = False
        db_table = 'Raeis'


class Shekayat(models.Model):

    codemelishaki = models.BigIntegerField(
        db_column='codeMeliShaki', primary_key=True)
    shekayatid = models.ForeignKey(
        Herasat, models.DO_NOTHING, db_column='shekayatID')
    shekayattype = models.CharField(db_column='shekayatType', max_length=500)
    addressshaki = models.TextField(
        db_column='addressShaki', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Shekayat'


class Sysdiagrams(models.Model):
    name = models.CharField(max_length=128)
    principal_id = models.IntegerField()
    diagram_id = models.AutoField(primary_key=True)
    version = models.IntegerField(blank=True, null=True)
    definition = models.BinaryField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sysdiagrams'
        unique_together = (('principal_id', 'name'),)
