from django.shortcuts import render
from . models import *
from django.http import Http404
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger
from django.db.models import Q
from django.shortcuts import reverse, redirect
from django.contrib.auth import login, authenticate, logout
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from .froms import Loginform,RegisterForm

# Create your views here.
def index(request):
    banners =  Banner.objects.filter(is_delete=False).all()
    articles = Article.objects.filter(is_delete=False,is_top=True).all()
    categorys = Category.objects.filter(is_delete=False).all()
    all_articles = Article.objects.filter(is_delete=False).all()[:10]

    newcoms = Comment.objects.filter(is_delete=False).all()

    newcoms_art = []
    for com in newcoms:
        newcoms_art.append(com.article)
    newcoms_art = list(set(newcoms_art))[:10]
    fls = FriendLink.objects.filter(is_delete=False).all()
    return render(request,'index.html',locals())

def detail(request,id):
    try:
        article = Article.objects.get(id=id)

        newcoms = Comment.objects.filter(is_delete=False).all()
        newcoms_art = []
        for com in newcoms:
            newcoms_art.append(com.article)
        newcoms_art = list(set(newcoms_art))[:10]

        recommend_arts = []
        for tag in article.tag.all():
            recommend_arts.extend(tag.article_set.all())
        recommend_arts = list(set(recommend_arts))[:10]

        comments = article.comment_set.all()

        return render(request,'show.html',locals())
    except Article.DoesNotExist:
        raise Http404()

def art_list(request):
    cid = request.GET.get('cid')
    tid = request.GET.get('tid')
    kw = request.GET.get('kw')
    if not cid and not tid and not kw:
        articles = Article.objects.filter(is_delete=False).all()
    elif cid:
        try:
            category = Category.objects.get(id=cid)
            articles = category.article_set.filter(is_delete=False).all()
        except Category.DoesNotExist:
            raise Http404()

    elif tid:
        try:
            tag = Tag.objects.get(id=tid)
            articles = tag.article_set.filter(is_delete=False).all()
        except Category.DoesNotExist:
            raise Http404()

    elif kw:
        articles = Article.objects.filter(is_delete=False).filter(Q(title__icontains=kw) | Q(content__icontains=kw)).all()


    try:
        page = request.GET.get('page', 1)
    except PageNotAnInteger:
        page = 1


    # Provide Paginator with the request object for complete querystring generation

    p = Paginator(articles,per_page=3 ,request=request)

    articles = p.page(page)

    tags = Tag.objects.filter(is_delete=False).all()

    newcoms = Comment.objects.filter(is_delete=False).all()

    newcoms_art = []
    for com in newcoms:
        newcoms_art.append(com.article)
    newcoms_art = list(set(newcoms_art))[:10]
    return render(request,'list.html',locals())

def register(request):
    if request.method == 'GET':
        register_from = RegisterForm()
        return render(request, 'register.html',locals())



    else:
        register_from = RegisterForm(request.POST)
        if register_from.is_valid():

            # username = request.POST.get('username')
            # password = request.POST.get('password')
            # password1 = request.POST.get('password1')
            # phone = request.POST.get('phone')

            username = register_from.cleaned_data.get('username')
            password = register_from.cleaned_data.get('password')
            password1 = register_from.cleaned_data.get('password1')
            phone = register_from.cleaned_data.get('phone')



            user = BokeUser.objects.create_user(
                username=username,
                password=password,
                phone=phone
            )

            if user:
                return redirect(reverse('boke:login'))

        else:
            return render(request, 'register.html', locals())





def blogin(request):
    if request.method == 'GET':
        login_from = Loginform()
        return render(request, 'login.html',locals())

    else:
        login_from = Loginform(request.POST)
        if login_from.is_valid():
            # username = request.POST.get('username')
            # password = request.POST.get('password')
            username = login_from .cleaned_data.get('username')
            password = login_from.cleaned_data.get('password')

            user = authenticate(request=request,username=username, password=password)

            if user:
                login(request, user)
                return redirect(reverse('boke:index'))
            else:
                return redirect(reverse('boke:login'))
        else:
            return render(request, 'login.html', locals())
def blogout(request):
    logout(request)
    return redirect(reverse('boke:index'))


@login_required(login_url='/login/')
def comment(request):
    content = request.POST.get('content')
    id = request.POST.get('id')
    if not content:
        return redirect(reverse("boke:detail", kwargs={"id": id}))
    try:
        art = Article.objects.get(id=id)
        Comment.objects.create(
            content=content,
            user=request.user,
            article=art,
        )
        return redirect(reverse("boke:detail",kwargs={"id":id}))

    except Article.DoesNotExist:
        raise Http404()

