from models import OcActivity


class MyDBRouter(object):

    def db_for_read(self, model, **hints):
        """ reading OcActivity from owncloud """
        if model == OcActivity:
            return 'owncloud'
        return None
