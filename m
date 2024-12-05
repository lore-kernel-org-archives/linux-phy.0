Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 508E4E7716C
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 11:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KK+j+cPr1GE9QsXCpKR1kthk2myL5n2sDQY1AuJBeFE=; b=yNi7VUzXyrI+9D
	5gLyUP8hz1RSSAjsfyCNOwD7DvPZ5jyf2XI1gET/9glp0AaHznPBhVHsu9Y6gO+ReiRKFGprk8R84
	dgxMyl9WjHe8lYO05utZC/TcF2Fxd3b60RI6xcB8bb5E8ZH+qPPQp5ImZ9BLpNUZkoklgdLfUG630
	DJKSmSicLdwDcqrTy7StUwCmJ6ml20qli3vGA//pWljHuhrqdiWI4efsPvLXYCsYqbT2NvPXtvb/F
	umbGiZx56FPoT+tBux7qX6tGngMOugiEtXcXlZwQxfI+7IWgiCvrapdAEMMyzxyfVMWenXfX/WvM1
	TqQAzTh0ZaWYreD8tBHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJAFL-0000000Fl7g-2eQA;
	Thu, 05 Dec 2024 11:42:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJA2D-0000000FisI-1NlL
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 11:28:42 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B59vcMR026540;
	Thu, 5 Dec 2024 11:28:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c6yBsYlk2hHbVT3Z1KXyd5EEqZ0mKQH8kRsKaEi4jcY=; b=ZqcnoTRBOHe3fARj
	rbD/lcrI9ZGSj5YVkiu5XHIqtXAO13ne+nQ+svWCw/+QnxdbJeu/0su1y5DLlv9W
	LbvRT3ijasmhin+7jiDw57KT0y1j3SJvTWJiVIYDWKK1vDD+z6fB1iaCvA0zFHf7
	lvQGzSsELIXp9aN5c7mUFf83VvcXRdA0bySXt8GhjBFsohtoNNdV9LPfiTW+5chz
	GHdIxHKo2wvl3a0EKEFpO/FcPpwLv+XKXIXdZTyESpWnOeRMjaE33pZ97uyUjI91
	sZfaOLjdeT0jxyKFw857MVuRAjaChhHCg91xZKbahXl9FEOB+Z66vgAHX6a22zFk
	Fi8L5w==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43ba0kg81j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Dec 2024 11:28:31 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4B5BSUf2017587
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 5 Dec 2024 11:28:30 GMT
Received: from [10.64.16.135] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 5 Dec 2024
 03:28:24 -0800
Message-ID: <93ddb63c-42da-43c8-9a77-c517ca5d6432@quicinc.com>
Date: Thu, 5 Dec 2024 19:28:21 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] drm/msm/dp: Add support for lane mapping
 configuration
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar
	<quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten
	<marijn.suijten@somainline.org>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Kuogee
 Hsieh" <quic_khsieh@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon
 Vijay Abraham I" <kishon@kernel.org>,
        Linus Walleij
	<linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>, <quic_lliu6@quicinc.com>,
        <quic_fangez@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>, <freedreno@lists.freedesktop.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-gpio@vger.kernel.org>
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-5-09a4338d93ef@quicinc.com>
 <CAA8EJpoY8hySQd00yODGeHjSpVZpEBLjF3aBiKGJPUhpr-2mgw@mail.gmail.com>
 <d2a3cd6f-1077-4edb-9f0c-0c940a639050@quicinc.com>
 <zvapsvfftai4fp6vwrn33edqsyuuprq2pxz6spij6j7t4y6xmn@zzgp7gbsivbk>
From: Xiangxu Yin <quic_xiangxuy@quicinc.com>
In-Reply-To: <zvapsvfftai4fp6vwrn33edqsyuuprq2pxz6spij6j7t4y6xmn@zzgp7gbsivbk>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: H_LCpRw1-Wm5UGBopzUOtJ16lxNUcf9k
X-Proofpoint-GUID: H_LCpRw1-Wm5UGBopzUOtJ16lxNUcf9k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 suspectscore=0
 mlxscore=0 bulkscore=0 mlxlogscore=999 spamscore=0 malwarescore=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_032841_373745_6622977B 
X-CRM114-Status: GOOD (  27.16  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiAxMi8yLzIwMjQgNjo0NiBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBNb24s
IERlYyAwMiwgMjAyNCBhdCAwNDo0MDowNVBNICswODAwLCBYaWFuZ3h1IFlpbiB3cm90ZToKPj4K
Pj4KPj4gT24gMTEvMjkvMjAyNCA5OjUwIFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4g
T24gRnJpLCAyOSBOb3YgMjAyNCBhdCAwOTo1OSwgWGlhbmd4dSBZaW4gPHF1aWNfeGlhbmd4dXlA
cXVpY2luYy5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4gQWRkIHRoZSBhYmlsaXR5IHRvIGNvbmZpZ3Vy
ZSBsYW5lIG1hcHBpbmcgZm9yIHRoZSBEUCBjb250cm9sbGVyLiBUaGlzIGlzCj4+Pj4gcmVxdWly
ZWQgd2hlbiB0aGUgcGxhdGZvcm0ncyBsYW5lIG1hcHBpbmcgZG9lcyBub3QgZm9sbG93IHRoZSBk
ZWZhdWx0Cj4+Pj4gb3JkZXIgKDAsIDEsIDIsIDMpLiBUaGUgbWFwcGluZyBydWxlcyBhcmUgbm93
IGNvbmZpZ3VyYWJsZSB2aWEgdGhlCj4+Pj4gYGRhdGEtbGFuZWAgcHJvcGVydHkgaW4gdGhlIGRl
dmljZXRyZWUuIFRoaXMgcHJvcGVydHkgZGVmaW5lcyB0aGUKPj4+PiBsb2dpY2FsLXRvLXBoeXNp
Y2FsIGxhbmUgbWFwcGluZyBzZXF1ZW5jZSwgZW5zdXJpbmcgY29ycmVjdCBsYW5lCj4+Pj4gYXNz
aWdubWVudCBmb3Igbm9uLWRlZmF1bHQgY29uZmlndXJhdGlvbnMuCj4+Pj4KPj4+PiBTaWduZWQt
b2ZmLWJ5OiBYaWFuZ3h1IFlpbiA8cXVpY194aWFuZ3h1eUBxdWljaW5jLmNvbT4KPj4+PiAtLS0K
Pj4+PiAgZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9jYXRhbG9nLmMgfCAxMSArKysrKy0tLS0t
LQo+Pj4+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2NhdGFsb2cuaCB8ICAyICstCj4+Pj4g
IGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfY3RybC5jICAgIHwgIDIgKy0KPj4+PiAgZHJpdmVy
cy9ncHUvZHJtL21zbS9kcC9kcF9wYW5lbC5jICAgfCAxMyArKysrKysrKysrLS0tCj4+Pj4gIGRy
aXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfcGFuZWwuaCAgIHwgIDMgKysrCj4+Pj4gIDUgZmlsZXMg
Y2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4+Pj4KPiAKPj4+PiBA
QCAtNDYxLDYgKzQ2MCw3IEBAIHN0YXRpYyBpbnQgbXNtX2RwX3BhbmVsX3BhcnNlX2R0KHN0cnVj
dCBtc21fZHBfcGFuZWwgKm1zbV9kcF9wYW5lbCkKPj4+PiAgICAgICAgIHN0cnVjdCBtc21fZHBf
cGFuZWxfcHJpdmF0ZSAqcGFuZWw7Cj4+Pj4gICAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm9m
X25vZGU7Cj4+Pj4gICAgICAgICBpbnQgY250Owo+Pj4+ICsgICAgICAgdTMyIGxhbmVfbWFwW0RQ
X01BWF9OVU1fRFBfTEFORVNdID0gezAsIDEsIDIsIDN9Owo+Pj4+Cj4+Pj4gICAgICAgICBwYW5l
bCA9IGNvbnRhaW5lcl9vZihtc21fZHBfcGFuZWwsIHN0cnVjdCBtc21fZHBfcGFuZWxfcHJpdmF0
ZSwgbXNtX2RwX3BhbmVsKTsKPj4+PiAgICAgICAgIG9mX25vZGUgPSBwYW5lbC0+ZGV2LT5vZl9u
b2RlOwo+Pj4+IEBAIC00NzQsMTAgKzQ3NCwxNyBAQCBzdGF0aWMgaW50IG1zbV9kcF9wYW5lbF9w
YXJzZV9kdChzdHJ1Y3QgbXNtX2RwX3BhbmVsICptc21fZHBfcGFuZWwpCj4+Pj4gICAgICAgICAg
ICAgICAgIGNudCA9IGRybV9vZl9nZXRfZGF0YV9sYW5lc19jb3VudChvZl9ub2RlLCAxLCBEUF9N
QVhfTlVNX0RQX0xBTkVTKTsKPj4+PiAgICAgICAgIH0KPj4+Pgo+Pj4+IC0gICAgICAgaWYgKGNu
dCA+IDApCj4+Pj4gKyAgICAgICBpZiAoY250ID4gMCkgewo+Pj4+ICsgICAgICAgICAgICAgICBz
dHJ1Y3QgZGV2aWNlX25vZGUgKmVuZHBvaW50Owo+Pj4+ICsKPj4+PiAgICAgICAgICAgICAgICAg
bXNtX2RwX3BhbmVsLT5tYXhfZHBfbGFuZXMgPSBjbnQ7Cj4+Pj4gLSAgICAgICBlbHNlCj4+Pj4g
KyAgICAgICAgICAgICAgIGVuZHBvaW50ID0gb2ZfZ3JhcGhfZ2V0X2VuZHBvaW50X2J5X3JlZ3Mo
b2Zfbm9kZSwgMSwgLTEpOwo+Pj4+ICsgICAgICAgICAgICAgICBvZl9wcm9wZXJ0eV9yZWFkX3Uz
Ml9hcnJheShlbmRwb2ludCwgImRhdGEtbGFuZXMiLCBsYW5lX21hcCwgY250KTsKPj4+PiArICAg
ICAgIH0gZWxzZSB7Cj4+Pj4gICAgICAgICAgICAgICAgIG1zbV9kcF9wYW5lbC0+bWF4X2RwX2xh
bmVzID0gRFBfTUFYX05VTV9EUF9MQU5FUzsgLyogNCBsYW5lcyAqLwo+Pj4+ICsgICAgICAgfQo+
Pj4KPj4+IFdoeT8gVGhpcyBzb3VuZHMgbW9yZSBsaWtlIGRwX2NhdGFsb2cgb3IgKGFmdGVyIHRo
ZSByZWZhY3RvcmluZyBhdAo+Pj4gWzFdKSBkcF9jdHJsLiBCdXQgbm90IHRoZSBkcF9wYW5lbC4K
Pj4+Cj4+PiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Byb2plY3QvZnJl
ZWRyZW5vL3Nlcmllcy8/b3JkZXJpbmc9LWxhc3RfdXBkYXRlZAo+Pj4KPj4gV2UgYXJlIHVzZWQg
dGhlIHNhbWUgcHJvcCAnZGF0YS1sYW5lcyA9IDwzIDIgMCAxPicgaW4gbWRzc19kcF9vdXQgdG8g
a2VlcCBzaW1pbGFyIGJlaGF2aW91ciB3aXRoIGRzaV9ob3N0X3BhcnNlX2xhbmVfZGF0YS4KPj4g
RnJvbSB0aGUgbW9kdWxlcyB1c2VkLCBjYXRhbG9nIHNlZW1zIG1vcmUgYXBwcm9wcmlhdGUsIGJ1
dCBzaW5jZSB0aGUgbWF4X2RwX2xhbmVzIGlzIHBhcnNlZCBhdCBkcF9wYW5lbCwgaXQgaGFzIGJl
ZW4gcGxhY2VkIGhlcmUuCj4+IFNob3VsZCBsYW5lX21hcCBwYXJzaW5nIGluIG1zbV9kcF9jYXRh
bG9nX2dldCwgYW5kIGtlZXAgbWF4X2RwX2xhbmVzIHBhcnNpbmcgYXQgdGhlIGRwX3BhbmVsPwo+
IAo+IG1zbV9kcF9jYXRhbG9nX2dldCgpIGlzIGdvaW5nIHRvIGJlIHJlbW92ZWQuIFNpbmNlIHRo
ZSBmdW5jdGlvbnMgdGhhdAo+IGFyZSBnb2luZyB0byB1c2UgaXQgYXJlIGluIGRwX2N0cmwgbW9k
dWxlLCBJIHRob3VnaHQgdGhhdCBkcF9jdHJsLmMgaXMKPiB0aGUgYmVzdCBwbGFjZS4gQSBiZXR0
ZXIgb3B0aW9uIG1pZ2h0IGJlIHRvIG1vdmUgbWF4X2RwX2xhbmVzIGFuZAo+IG1heF9kcF9saW5r
X3JhdGUgdG8gZHBfbGluay5jIGFzIHRob3NlIGFyZSBsaW5rIHBhcmFtcy4gVGhlbgo+IGxhbmVf
bWFwcGluZyBhbHNvIGxvZ2ljYWxseSBiZWNvbWVzIGEgcGFydCBvZiBkcF9saW5rIG1vZHVsZS4K
PiAKPiBCdXQgbm93IEkgaGF2ZSBhIG1vcmUgaW1wb3J0YW50IHF1ZXN0aW9uICh0cmlnZ2VyZWQg
YnkgS3Jpc2huYSdzIGVtYWlsCj4gYWJvdXQgU0FSMjEzMFAncyBVU0IpOiBpZiB0aGUgbGFuZXMg
YXJlIHN3YXBwZWQsIGRvZXMgVVNCIDMgd29yayBvbiB0aGF0Cj4gcGxhdGZvcm0/IE9yIGlzIGl0
IGJlaW5nIGRlbW90ZWQgdG8gVVNCIDIgd2l0aCBub2JvZHkgbm90aWNpbmcgdGhhdD8KPiAKPiBJ
ZiBsYW5lcyAwLzEgYW5kIDIvMyBhcmUgc3dhcHBlZCwgc2hvdWxkbid0IGl0IGJlIGhhbmRsZWQg
aW4gdGhlIFFNUAo+IFBIWSwgd2hlcmUgd2UgaGFuZGxlIGxhbmVzIGFuZCBvcmllbnRhdGlvbiBz
d2l0Y2hpbmc/Cj4gCkkgaGF2ZSBjaGVja2VkIHRoZSBEUCBoYXJkd2FyZSBwcm9ncmFtbWluZyBn
dWlkZSBhbmQgYWxzbyBkaXNjdXNzZWQgaXQgd2l0aCBLcmlzaG5hLgoKQWNjb3JkaW5nIHRvIHRo
ZSBIUEcgc2VjdGlvbiAnMy40LjIgUE4gYW5kIExhbmUgU3dhcDogUEhZIHN1cHBvcnRzIFBOIHN3
YXAgZm9yIG1haW5saW5rIGFuZCBBVVgsIGJ1dCBpdCBkb2Vzbid0IHN1cHBvcnQgbGFuZSBzd2Fw
IGZlYXR1cmUuJyAKClRoZSBsYW5lIHN3YXAgbWFpbmx5IHJlZmVycyB0byB0aGUgbG9naWNhbCB0
byBwaHlzaWNhbCBtYXBwaW5nIGJldHdlZW4gdGhlIERQIGNvbnRyb2xsZXIgYW5kIHRoZSBEUCBQ
SFkuIFRoZSBQSFkgaGFuZGxlcyBwb2xhcml0eSBpbnZlcnNpb24sIGFuZCB0aGUgbGFuZSBtYXAg
ZG9lcyBub3QgYWZmZWN0IFVTQiBiZWhhdmlvci4KCk9uIHRoZSBRQ1M2MTUgcGxhdGZvcm0sIHdl
IGhhdmUgYWxzbyB0ZXN0ZWQgd2hlbiBEUCB3b3JrcyB3aXRoIGxhbmUgc3dhcCwgb3RoZXIgVVNC
IDMuMCBwb3J0cyBjYW4gd29ya3Mgbm9ybWFsbHkgYXQgc3VwZXIgc3BlZWQuCgpBZGRpdGlvbmFs
bHksIGlmIGl0IHdlcmUgcGxhY2VkIG9uIHRoZSBQSFkgc2lkZSwgdGhlIFBIWSB3b3VsZCBuZWVk
IGFjY2VzcyB0byBkcF9saW5r4oCZcyBkb21haW4gd2hpY2ggY2FuIGFjY2VzcyBSRUdfRFBfTE9H
SUNBTDJQSFlTSUNBTF9MQU5FX01BUFBJTkcuClRoZXJlZm9yZSwgd2UgYmVsaWV2ZSB0aGF0IHRo
ZSAgbWF4X2RwX2xpbmtfcmF0ZSxtYXhfZHBfbGFuZXMgYW5kIGxhbmVfbWFwIG1vdmUgdG8gZHBf
bGluayBzaWRlIGlzIGJldHRlci4KCj4+Pj4gKwo+Pj4+ICsgICAgICAgbWVtY3B5KG1zbV9kcF9w
YW5lbC0+bGFuZV9tYXAsIGxhbmVfbWFwLCBtc21fZHBfcGFuZWwtPm1heF9kcF9sYW5lcyAqIHNp
emVvZih1MzIpKTsKPj4+Pgo+Pj4+ICAgICAgICAgbXNtX2RwX3BhbmVsLT5tYXhfZHBfbGlua19y
YXRlID0gbXNtX2RwX3BhbmVsX2xpbmtfZnJlcXVlbmNpZXMob2Zfbm9kZSk7Cj4+Pj4gICAgICAg
ICBpZiAoIW1zbV9kcF9wYW5lbC0+bWF4X2RwX2xpbmtfcmF0ZSkKPj4+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9wYW5lbC5oIGIvZHJpdmVycy9ncHUvZHJtL21zbS9k
cC9kcF9wYW5lbC5oCj4+Pj4gaW5kZXggMGU5NDRkYjNhZGYyZjE4N2YzMTM2NjRmZTgwY2Y1NDBl
YzdhMTlmMi4uNzYwM2I5MmMzMjkwMmJkM2Q0NDg1NTM5YmQ2MzA4NTM3ZmY3NWEyYyAxMDA2NDQK
Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmgKPj4+PiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmgKPj4+PiBAQCAtMTEsNiArMTEsOCBAQAo+
Pj4+ICAjaW5jbHVkZSAiZHBfYXV4LmgiCj4+Pj4gICNpbmNsdWRlICJkcF9saW5rLmgiCj4+Pj4K
Pj4+PiArI2RlZmluZSBEUF9NQVhfTlVNX0RQX0xBTkVTICAgIDQKPj4+PiArCj4+Pj4gIHN0cnVj
dCBlZGlkOwo+Pj4+Cj4+Pj4gIHN0cnVjdCBtc21fZHBfZGlzcGxheV9tb2RlIHsKPj4+PiBAQCAt
NDYsNiArNDgsNyBAQCBzdHJ1Y3QgbXNtX2RwX3BhbmVsIHsKPj4+PiAgICAgICAgIGJvb2wgdmlk
ZW9fdGVzdDsKPj4+PiAgICAgICAgIGJvb2wgdnNjX3NkcF9zdXBwb3J0ZWQ7Cj4+Pj4KPj4+PiAr
ICAgICAgIHUzMiBsYW5lX21hcFtEUF9NQVhfTlVNX0RQX0xBTkVTXTsKPj4+PiAgICAgICAgIHUz
MiBtYXhfZHBfbGFuZXM7Cj4+Pj4gICAgICAgICB1MzIgbWF4X2RwX2xpbmtfcmF0ZTsKPj4+Pgo+
Pj4+Cj4+Pj4gLS0KPj4+PiAyLjI1LjEKPj4+Pgo+Pj4KPj4+Cj4+Cj4+Cj4+IC0tIAo+PiBsaW51
eC1waHkgbWFpbGluZyBsaXN0Cj4+IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCj4+IGh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo+IAoK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
