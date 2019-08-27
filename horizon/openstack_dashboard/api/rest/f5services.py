from django import forms
from django.views.decorators.csrf import csrf_exempt
from django.views import generic
from six.moves import zip as izip

from openstack_dashboard import api
from openstack_dashboard.api.rest import urls
from openstack_dashboard.api.rest import utils as rest_utils

@urls.register
class ADC(generic.View):
    """API for retrieving ADCs"""
    url_regex = r'f5services/adcs/$'

    # @rest_utils.ajax()
    # def adc_list(self, request):
    #     """Get a specific image

    #     http://localhost/api/f5services/adcs/
    #     """
    #     adc_list = api.f5wafaas.adcs(request)
    #     return adc_list
    #     # return adc_list.to_dict(show_ext_attrs=True)