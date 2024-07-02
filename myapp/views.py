
from django.shortcuts import render
from .forms import MyForm

def convertor_view(request):
    form = MyForm()
    return render(request, 'myapp/index.html', {'form': form})
