# -*- mode: snippet -*-
# Last modified: <2013-09-26 11:30:01 Thursday by wongrichard>
# name: seg
# key: seg
# contributor: Richard Wong <chao787@gmail.com>
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# --
import json
import logging

import requests
requests_log = logging.getLogger("requests")
requests_log.setLevel(logging.WARNING)


def word_segment(text, ip_addr='localhost:8055'):
    """
    SUCCESS: return segmentation list.
    OTHERWISE:return None and log server messages.
    """
    assert isinstance(text, unicode)
    assert isinstance(ip_addr, str)

    uri = u'http://%s/segment/seg' % ip_addr
    data_dict = {u'text': text}
    try:
        r = requests.post(uri, data=json.dumps(data_dict).encode('utf-8'))
    except requests.ConnectionError:
        logging.error('Connection server may down here.')
        return None

    body_dict = json.loads(r.text)
    if r.status_code == 201:
        return body_dict.get('word_list')
    else:
        logging.error(body_dict.get('message'))
        return None