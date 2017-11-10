from django import template
import datetime
import time
register = template.Library()


def print_timestamp(timestamp):
    try:
        ts = float(timestamp)
    except ValueError:
        return None
    return time.strftime("%Y-%m-%d %H:%M:%S", time.gmtime(ts))


register.filter(print_timestamp)
