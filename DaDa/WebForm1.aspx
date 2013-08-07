<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DaDa.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>�ޱ���ҳ</title>
    <style type="text/css">
        body, ul, ol, li, p, h1, h2, h3, h4, h5, h6, table, td, th, form, fieldset, img, dl, dt, dd
        {
            margin: 0px;
            padding: 0px;
            font-family: Arial, Helvetica, sans-serif;
        }
        a
        {
            color: #35679a;
            text-decoration: none;
        }
        a:hover
        {
            color: #c00;
            text-decoration: underline;
        }
        img
        {
            border: none;
        }
        li
        {
            list-style: none;
        }
        body
        {
            text-align: left;
            background: #505050;
            font-size: 12px;
        }
        .cont
        {
            background: #080808;
            padding: 8px;
            width: 840px;
            margin: 0 auto;
        }
        .main
        {
            background: #eee;
            padding: 6px;
        }
        h2
        {
            font-size: 16px;
            font-family: "����";
            color: #35679a; ;padding:4px10px;margin:10px016px;font-weight:100;border-bottom:2pxsolid#ccc;}
        h3
        {
            padding-left: 50px;
            font-size: 16px;
            color: #555;
        }
        .tab
        {
            border: 4px solid #ccc;
            margin: 10px 50px;
        }
        .tabtag
        {
            line-height: 24px;
            height: 24px;
            border-bottom: 2px solid #ccc;
        }
        .tabtag li
        {
            float: left;
            width: 24%;
            text-align: center;
            background: #eee;
        }
        .tabtag li.cur
        {
            color: #900;
            background: #fff;
        }
        .tabcon
        {
            height: 100px;
            overflow: hidden;
        }
        .tabcon div
        {
            height: 80px;
            padding: 10px;
            color: #900;
            font-size: 14px;
        }
        .tabcon li
        {
            line-height: 22px;
        }
        pre
        {
            color: #444;
        }
        pre strong
        {
            font-weight: 900;
        }
    </style>

    <script src="js/jquery-1.4.4.min.js" type="text/javascript"></script>

    <script src="js/jquery.tabs.js" type="text/javascript"></script>

    <script type="text/javascript">
    $(document).ready(function(){
    $("#tab").tab({ //ѡ��Ҫʹ��tab�����Ԫ�� �����ID ����"#testtab" 
    tabId: "#tabtag", //�л�������ѡ��� �����ID ���� "#tabcon"
    tabTag: "li", //�л���������ǩ ���� li 
    conId: "#tabcon", //�л�����ID 
    conTag: "div", //�л�����tag 
    curClass:"cur", //��ǵ�ǰ������ Ĭ��Ϊ cur
    act: "click", //������ʽ Ĭ��Ϊ ��� 
    dft: 0, //Ĭ����ʾ�ڼ��� Ĭ��Ϊ��һ��
    effact: "slow", //Ч�� Ĭ��Ϊ���л�Ч�� 
    auto: false, //�Զ��л� Ĭ��Ϊ���Զ��л� 
    autotime: 3000, //����Զ��л� �Զ��л���ʱ����Ĭ�� 3 �� 
    aniSpeed: 500 //������ö����л�Ч�� ����ִ�е�ʱ���� Ĭ��500ms 
    }) 
    });
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <div class="tab" id="tab">
            <div id="tabtag" class="tabtag" style="position: relative;">
                <ul>
                    <li class="cur">��Ŀһ</li>
                    <li>��Ŀ��</li>
                    <li>��Ŀ��</li>
                    <li>��Ŀ��</li>
                </ul>
            </div>
            <div id="tabcon" class="tabcon">
                <div>
                    <ul>
                        <li><a href="#nogo">��֮Ȫ������ս�������������粨 ���4:2��תʤ�̳�</a></li>
                        <li><a href="#nogo">Ͷ�볬�����ֺ��ܺͣ�09��Э����������Ԥ��500��</a></li>
                        <li><a href="#nogo">09�г��ڴ�ʮ�󽹵�ս��³���۷�PK����±Ⱦ���</a></li>
                        <li><a href="#nogo">̩�����²���ħ������ ��Ա������Ҫ����һ����</a></li>
                    </ul>
                </div>
                <div>
                    <ul>
                        <li><a href="#nogo">��֮Ȫ������ս�������������粨 ���4:2��תʤ�̳�</a><span>03/06</span></li>
                        <li><a href="#nogo">Ͷ�볬�����ֺ��ܺͣ�09��Э����������Ԥ��500��</a><span>03/06</span></li>
                        <li><a href="#nogo">09�г��ڴ�ʮ�󽹵�ս��³���۷�PK����±Ⱦ���</a><span>03/06</span></li>
                        <li><a href="#nogo">̩�����²���ħ������ ��Ա������Ҫ����һ����</a><span>03/06</span>></li></ul>
                </div>
                <div>
                    <ul>
                        <li><a href="#nogo">�ձ�Ӱ�Ǽ��Ͽɰ��崿��һ��</a></li>
                        <li><a href="#nogo">�г������������������¼���</a></li>
                        <li><a href="#nogo">�г������������������¼���</a></li>
                        <li><a href="#nogo">�г������������������¼���</a></li>
                    </ul>
                </div>
                <div>
                    <ul>
                        <li><a href="#nogo">��֮Ȫ������ս�������������粨 ���4:2��תʤ�̳�</a><span>03/06</span></li>
                        <li><a href="#nogo">Ͷ�볬�����ֺ��ܺͣ�09��Э����������Ԥ��500��</a><span>03/06</span></li>
                        <li><a href="#nogo">09�г��ڴ�ʮ�󽹵�ս��³���۷�PK����±Ⱦ���</a><span>03/06</span></li>
                        <li><a href="#nogo">̩�����²���ħ������ ��Ա������Ҫ����һ����</a><span>03/06</span>></li></ul>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
