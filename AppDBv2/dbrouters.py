from models import *


class DBRouter(object):

    def db_for_read(self, model, **hints):
        # reading OcActivity from owncloud
        if model == OcActivity:
            return 'owncloud'
        # reading Actions from default
        elif model == Actions:
            return 'default'
        return None