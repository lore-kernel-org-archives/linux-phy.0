Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D88DD78303
	for <linux-phy@archiver.kernel.org>; Mon,  2 Dec 2024 10:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPXDDvnliJxwyVMwVb0nx2EbUefuHiZPQ4WuJgFKmao=; b=op+ggFtBne8/D1
	DyC2qOKeJFunr4/T2459gFj/oJE8tTD0KEGEENJirhN+Gqdghc43w5oy1zhhf2pOI5g+3oSsDGMdc
	D0cRg4npBrK4MZ2k38wC/6iqEneJ09TNRQtz0w/n4tVGa8wehyaPFOJKkJ80v+w6mZ2I5pfo4C/Ga
	4js4wemgAaIXqRBOfnhrm4BKHRCjvYIsVLl/UpCk/R54P8RNXYFFQ0KqbU8eUfIrlEFt95+w6D/Cb
	gJVv2FNN2bcWt+bUpMrKQW1CtZkfeW6Cn1oZVDhO6lu9KPCmDV+rD+Ts2yUb8RZBsJqJwfWOU0ArQ
	UsrvmpazevhELbWhrJ/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI3jJ-00000005jzC-0F0B;
	Mon, 02 Dec 2024 10:32:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI3il-00000005jrd-1iP7
	for linux-phy@lists.infradead.org;
	Mon, 02 Dec 2024 10:32:04 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B28PD8r030509;
	Mon, 2 Dec 2024 10:31:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V9JKIx72ZzU6OqC05+Y0cV4EzX/9xl6Xv4DQi1WQZEY=; b=gPHIHzQAq5b3PbBr
	5zksYJJH7AjoF0Cyyx4OcUXfLi2YtKe126piVvjWtAqQTkkwGaWWoiG4ziEvSaY9
	t7+xhLEOjKZyIldwADuzca1oFHHg7u6rEuqkdW6T9OjfWFzX35H01yfck7j6LTsD
	58sGy1dVSAaSrbC1JTAw4HS6NhGKJhn+jvu6dhzbkqsracwkV2SCqN875hebPIEV
	/U6HM5bawBWTrh4c9khrUgEWtnqmbcrztDA2i248cVi/gnLXZWWVG7CyG4fzNcCT
	IacBlmyiTWeO+QPXTN0gkvVhln2k4dLXJ9AaTivY8AamMAgOM6Se+N9V5rNePG9C
	/m9ujQ==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437sq64hfe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 02 Dec 2024 10:31:54 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4B2AVr7m000301
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 2 Dec 2024 10:31:53 GMT
Received: from [10.64.16.135] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 2 Dec 2024
 02:31:46 -0800
Message-ID: <22600892-3b0d-4b0f-9c46-e74241960dda@quicinc.com>
Date: Mon, 2 Dec 2024 18:31:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] phy: qcom: qmp-usbc: Add DP phy mode support on
 QCS615
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov
	<dmitry.baryshkov@linaro.org>,
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
        <quic_fangez@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
        <freedreno@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-gpio@vger.kernel.org>
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-3-09a4338d93ef@quicinc.com>
 <b310587f-c6c3-41dd-83bf-6affbcc65730@kernel.org>
From: Xiangxu Yin <quic_xiangxuy@quicinc.com>
In-Reply-To: <b310587f-c6c3-41dd-83bf-6affbcc65730@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: ouCZElGXG-cUky1JI7neTh2rj2duVt65
X-Proofpoint-ORIG-GUID: ouCZElGXG-cUky1JI7neTh2rj2duVt65
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 bulkscore=0
 priorityscore=1501 mlxscore=0 clxscore=1011 lowpriorityscore=0
 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0 mlxlogscore=999
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412020093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_023203_563602_F364B97B 
X-CRM114-Status: GOOD (  21.70  )
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

CgpPbiAxMS8yOS8yMDI0IDQ6MTggUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24g
MjkvMTEvMjAyNCAwODo1NywgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+IEV4dGVuZGVkIERQIHN1cHBv
cnQgZm9yIFFDUzYxNSBVU0Igb3IgRFAgcGh5LiBEaWZmZXJlbnRpYXRlZCBiZXR3ZWVuCj4+IFVT
QkMgYW5kIERQIFBIWSB1c2luZyB0aGUgbWF0Y2ggdGFibGXigJlzIHR5cGUsIGR5bmFtaWNhbGx5
IGdlbmVyYXRpbmcKPj4gZGlmZmVyZW50IHR5cGVzIG9mIGNmZyBhbmQgbGF5b3V0IGF0dHJpYnV0
ZXMgZHVyaW5nIGluaXRpYWxpemF0aW9uIGJhc2VkCj4+IG9uIHRoaXMgdHlwZS4gU3RhdGljIHZh
cmlhYmxlcyBhcmUgc3RvcmVkIGluIGNmZywgd2hpbGUgcGFyc2VkIHZhbHVlcwo+PiBhcmUgb3Jn
YW5pemVkIGludG8gdGhlIGxheW91dCBzdHJ1Y3R1cmUuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFhp
YW5neHUgWWluIDxxdWljX3hpYW5neHV5QHF1aWNpbmMuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1kcC1waHkuaCB8ICAgIDEgKwo+PiAgZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYmMuYyAgIHwgMTQ1MyArKysrKysrKysrKysrKysr
KysrKysrKystLS0tCj4+ICAyIGZpbGVzIGNoYW5nZWQsIDEyNTQgaW5zZXJ0aW9ucygrKSwgMjAw
IGRlbGV0aW9ucygtKQo+IAo+IAo+IAo+IC4uLgo+IAo+PiArCS8qIHByb2dyYW0gZGVmYXVsdCBz
ZXR0aW5nIGZpcnN0ICovCj4+ICsJd3JpdGVsKDB4MkEsIHR4ICsgUVNFUkRFU19WM19UWF9UWF9E
UlZfTFZMKTsKPj4gKwl3cml0ZWwoMHgyMCwgdHggKyBRU0VSREVTX1YzX1RYX1RYX0VNUF9QT1NU
MV9MVkwpOwo+PiArCXdyaXRlbCgweDJBLCB0eDIgKyBRU0VSREVTX1YzX1RYX1RYX0RSVl9MVkwp
Owo+PiArCXdyaXRlbCgweDIwLCB0eDIgKyBRU0VSREVTX1YzX1RYX1RYX0VNUF9QT1NUMV9MVkwp
Owo+PiArCj4+ICsJd3JpdGVsKHZvbHRhZ2Vfc3dpbmdfY2ZnLCB0eCArIFFTRVJERVNfVjNfVFhf
VFhfRFJWX0xWTCk7Cj4+ICsJd3JpdGVsKHByZV9lbXBoYXNpc19jZmcsIHR4ICsgUVNFUkRFU19W
M19UWF9UWF9FTVBfUE9TVDFfTFZMKTsKPj4gKwl3cml0ZWwodm9sdGFnZV9zd2luZ19jZmcsIHR4
MiArIFFTRVJERVNfVjNfVFhfVFhfRFJWX0xWTCk7Cj4+ICsJd3JpdGVsKHByZV9lbXBoYXNpc19j
ZmcsIHR4MiArIFFTRVJERVNfVjNfVFhfVFhfRU1QX1BPU1QxX0xWTCk7Cj4+ICsKPj4gKwlyZXR1
cm4gMDsKPj4gK30KPj4gKwo+PiArc3RhdGljIGludCBxY3M2MTVfcW1wX2NvbmZpZ3VyZV9kcF9w
aHkoc3RydWN0IHFtcF91c2JjICpxbXApCj4+ICt7Cj4+ICsJc3RydWN0IHFtcF9waHlfZHBfbGF5
b3V0ICpsYXlvdXQgPSB0b19kcF9sYXlvdXQocW1wKTsKPj4gKwl1MzIgc3RhdHVzOwo+PiArCj4+
ICsJd3JpdGVsKDB4MDEsIGxheW91dC0+ZHBfcGh5ICsgUVNFUkRFU19EUF9QSFlfQ0ZHKTsKPj4g
Kwl3cml0ZWwoMHgwNSwgbGF5b3V0LT5kcF9waHkgKyBRU0VSREVTX0RQX1BIWV9DRkcpOwo+PiAr
CXdyaXRlbCgweDAxLCBsYXlvdXQtPmRwX3BoeSArIFFTRVJERVNfRFBfUEhZX0NGRyk7Cj4+ICsJ
d3JpdGVsKDB4MDksIGxheW91dC0+ZHBfcGh5ICsgUVNFUkRFU19EUF9QSFlfQ0ZHKTsKPj4gKwo+
PiArCXdyaXRlbCgweDIwLCBsYXlvdXQtPmRwX3NlcmRlcyArIFFTRVJERVNfQ09NX1JFU0VUU01f
Q05UUkwpOwo+PiArCj4+ICsJLy8gQ19SRUFEWQo+IAo+IFVzZSBMaW51eCBjb2Rpbmcgc3R5bGUu
Cj4gCj4gQW55d2F5LCBkcm9wIGFsbCB1c2VsZXNzIGNvbW1lbnRzLiBTYXkgc29tZXRoaW5nIHVz
ZWZ1bCBvciBkb24ndCBzYXkKPiBhbnl0aGluZy4KPiAKT2ssIHdpbGwgdXBkYXRlIGluIG5leHQg
c2VwZXJhdGVkIHBhdGNoZXMuCj4+ICsJaWYgKHJlYWRsX3BvbGxfdGltZW91dChsYXlvdXQtPmRw
X3NlcmRlcyArIFFTRVJERVNfQ09NX0NfUkVBRFlfU1RBVFVTLAo+PiArCQkJc3RhdHVzLAo+PiAr
CQkJKChzdGF0dXMgJiBCSVQoMCkpID4gMCksCj4+ICsJCQk1MDAsCj4+ICsJCQkxMDAwMCkpIHsK
Pj4gKwkJZGV2X2VycihxbXAtPmRldiwgIkNfUkVBRFkgbm90IHJlYWR5XG4iKTsKPj4gKwkJcmV0
dXJuIC1FVElNRURPVVQ7Cj4+ICsJfQo+PiArCj4+ICsJLy8gRlJFUV9ET05FCj4+ICsJaWYgKHJl
YWRsX3BvbGxfdGltZW91dChsYXlvdXQtPmRwX3NlcmRlcyArIFFTRVJERVNfQ09NX0NNTl9TVEFU
VVMsCj4+ICsJCQlzdGF0dXMsCj4+ICsJCQkoKHN0YXR1cyAmIEJJVCgwKSkgPiAwKSwKPj4gKwkJ
CTUwMCwKPj4gKwkJCTEwMDAwKSl7Cj4+ICsJCWRldl9lcnIocW1wLT5kZXYsICJGUkVRX0RPTkUg
bm90IHJlYWR5XG4iKTsKPj4gKwkJcmV0dXJuIC1FVElNRURPVVQ7Cj4+ICsJfQo+PiArCj4+ICsJ
Ly8gUExMX0xPQ0tFRAo+PiArCWlmIChyZWFkbF9wb2xsX3RpbWVvdXQobGF5b3V0LT5kcF9zZXJk
ZXMgKyBRU0VSREVTX0NPTV9DTU5fU1RBVFVTLAo+PiArCQkJc3RhdHVzLAo+PiArCQkJKChzdGF0
dXMgJiBCSVQoMSkpID4gMCksCj4+ICsJCQk1MDAsCj4+ICsJCQkxMDAwMCkpewo+PiArCQlkZXZf
ZXJyKHFtcC0+ZGV2LCAiUExMX0xPQ0tFRCBub3QgcmVhZHlcbiIpOwo+PiArCQlyZXR1cm4gLUVU
SU1FRE9VVDsKPj4gKwl9Cj4+ICsKPj4gKwl3cml0ZWwoMHgxOSwgbGF5b3V0LT5kcF9waHkgKyBR
U0VSREVTX0RQX1BIWV9DRkcpOwo+PiArCXVkZWxheSgxMCk7Cj4+ICsKPj4gKwkvLyBUU1lOQ19E
T05FCj4+ICsJaWYgKHJlYWRsX3BvbGxfdGltZW91dChsYXlvdXQtPmRwX3BoeSArIFFTRVJERVNf
VjNfRFBfUEhZX1NUQVRVUywKPj4gKwkJCXN0YXR1cywKPj4gKwkJCSgoc3RhdHVzICYgQklUKDAp
KSA+IDApLAo+PiArCQkJNTAwLAo+PiArCQkJMTAwMDApKXsKPj4gKwkJZGV2X2VycihxbXAtPmRl
diwgIlRTWU5DX0RPTkUgbm90IHJlYWR5XG4iKTsKPj4gKwkJcmV0dXJuIC1FVElNRURPVVQ7Cj4+
ICsJfQo+PiArCj4+ICsJLy8gUEhZX1JFQURZCj4+ICsJaWYgKHJlYWRsX3BvbGxfdGltZW91dChs
YXlvdXQtPmRwX3BoeSArIFFTRVJERVNfVjNfRFBfUEhZX1NUQVRVUywKPj4gKwkJCXN0YXR1cywK
Pj4gKwkJCSgoc3RhdHVzICYgQklUKDEpKSA+IDApLAo+PiArCQkJNTAwLAo+PiArCQkJMTAwMDAp
KXsKPj4gKwkJZGV2X2VycihxbXAtPmRldiwgIlBIWV9SRUFEWSBub3QgcmVhZHlcbiIpOwo+PiAr
CQlyZXR1cm4gLUVUSU1FRE9VVDsKPj4gKwl9Cj4+ICsKPj4gKwl3cml0ZWwoMHgzZiwgbGF5b3V0
LT5kcF90eCArIFFTRVJERVNfVjNfVFhfVFJBTlNDRUlWRVJfQklBU19FTik7Cj4+ICsJd3JpdGVs
KDB4MTAsIGxheW91dC0+ZHBfdHggKyBRU0VSREVTX1YzX1RYX0hJR0haX0RSVlJfRU4pOwo+PiAr
CXdyaXRlbCgweDBhLCBsYXlvdXQtPmRwX3R4ICsgUVNFUkRFU19WM19UWF9UWF9QT0xfSU5WKTsK
Pj4gKwl3cml0ZWwoMHgzZiwgbGF5b3V0LT5kcF90eDIgKyBRU0VSREVTX1YzX1RYX1RSQU5TQ0VJ
VkVSX0JJQVNfRU4pOwo+PiArCXdyaXRlbCgweDEwLCBsYXlvdXQtPmRwX3R4MiArIFFTRVJERVNf
VjNfVFhfSElHSFpfRFJWUl9FTik7Cj4+ICsJd3JpdGVsKDB4MGEsIGxheW91dC0+ZHBfdHgyICsg
UVNFUkRFU19WM19UWF9UWF9QT0xfSU5WKTsKPj4gKwo+PiArCXdyaXRlbCgweDE4LCBsYXlvdXQt
PmRwX3BoeSArIFFTRVJERVNfRFBfUEhZX0NGRyk7Cj4+ICsJd3JpdGVsKDB4MTksIGxheW91dC0+
ZHBfcGh5ICsgUVNFUkRFU19EUF9QSFlfQ0ZHKTsKPj4gKwo+PiArCWlmIChyZWFkbF9wb2xsX3Rp
bWVvdXQobGF5b3V0LT5kcF9waHkgKyBRU0VSREVTX1YzX0RQX1BIWV9TVEFUVVMsCj4+ICsJCQlz
dGF0dXMsCj4+ICsJCQkoKHN0YXR1cyAmIEJJVCgxKSkgPiAwKSwKPj4gKwkJCTUwMCwKPj4gKwkJ
CTEwMDAwKSl7Cj4+ICsJCWRldl9lcnIocW1wLT5kZXYsICJQSFlfUkVBRFkgbm90IHJlYWR5XG4i
KTsKPj4gKwkJcmV0dXJuIC1FVElNRURPVVQ7Cj4+ICsJfQo+PiArCj4+ICsJcmV0dXJuIDA7Cj4+
ICt9Cj4+ICsKPj4gK3N0YXRpYyBpbnQgcWNzNjE1X3FtcF9jYWxpYnJhdGVfZHBfcGh5KHN0cnVj
dCBxbXBfdXNiYyAqcW1wKQo+PiArewo+PiArCXN0YXRpYyBjb25zdCB1OCBjZmcxX3NldHRpbmdz
W10gPSB7MHgxMywgMHgyMywgMHgxZH07Cj4+ICsJc3RydWN0IHFtcF9waHlfZHBfbGF5b3V0ICps
YXlvdXQgPSB0b19kcF9sYXlvdXQocW1wKTsKPj4gKwl1OCB2YWw7Cj4+ICsKPj4gKwlsYXlvdXQt
PmRwX2F1eF9jZmcrKzsKPj4gKwlsYXlvdXQtPmRwX2F1eF9jZmcgJT0gQVJSQVlfU0laRShjZmcx
X3NldHRpbmdzKTsKPj4gKwl2YWwgPSBjZmcxX3NldHRpbmdzW2xheW91dC0+ZHBfYXV4X2NmZ107
Cj4+ICsKPj4gKwl3cml0ZWwodmFsLCBsYXlvdXQtPmRwX3BoeSArIFFTRVJERVNfRFBfUEhZX0FV
WF9DRkcxKTsKPj4gKwo+PiArCXFtcF91c2JjX2NoZWNrX2RwX3BoeShxbXAsICJwb3NfY2FsaWJy
YXRlIik7Cj4+ICsKPj4gKwlyZXR1cm4gMDsKPj4gK30KPj4gKwo+PiArc3RhdGljIGludCBxbXBf
dXNiY19jb21faW5pdChzdHJ1Y3QgcGh5ICpwaHkpCj4+ICB7Cj4+ICAJc3RydWN0IHFtcF91c2Jj
ICpxbXAgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPj4gLQljb25zdCBzdHJ1Y3QgcW1wX3BoeV9j
ZmcgKmNmZyA9IHFtcC0+Y2ZnOwo+PiAtCXZvaWQgX19pb21lbSAqcGNzID0gcW1wLT5wY3M7Cj4+
ICsJaW50IG51bV92cmVnczsKPj4gIAl1MzIgdmFsID0gMDsKPj4gIAlpbnQgcmV0Owo+PiArCXVu
c2lnbmVkIGludCByZWdfcHdyX2RuOwo+PiAgCj4+IC0JcmV0ID0gcmVndWxhdG9yX2J1bGtfZW5h
YmxlKGNmZy0+bnVtX3ZyZWdzLCBxbXAtPnZyZWdzKTsKPj4gKwlpZiAocW1wLT50eXBlID09IFFN
UF9QSFlfVVNCQ19VU0IpIHsKPiAKPiAKPiBTb3JyeSwgYWxsIHRoaXMgY29kZSBpcyB1bnJldmll
d2FibGUuIE9yZ2FuaXplIHlvdXIgY2hhbmdlcyBpbiBsb2dpY2FsLAo+IHJldmlld2FibGUgY2h1
bmtzLgo+IApXaWxsIGNyZWF0ZSBuZXcgcGF0Y2ggbGlzdCBhbmQgc2VwZXJhdGUgcGF0Y2hzZXRz
Lgo+PiArCQlzdHJ1Y3QgcW1wX3BoeV91c2JfY2ZnICpjZmcgPSB0b191c2JfY2ZnKHFtcCk7Cj4+
ICsKPj4gKwkJbnVtX3ZyZWdzID0gY2ZnLT5udW1fdnJlZ3M7Cj4+ICsJCXJlZ19wd3JfZG4gPSBj
ZmctPnJlZ3NbUVBIWV9QQ1NfUE9XRVJfRE9XTl9DT05UUk9MXTsKPj4gKwl9IGVsc2Ugewo+IAo+
IC4uLgo+IAo+PiArCQkuY29tcGF0aWJsZSA9ICJxY29tLHFjczYxNS1xbXAtZHAtcGh5IiwKPj4g
KwkJLmRhdGEgPSAgJihzdHJ1Y3QgZGV2X2NmZykgewo+PiArCQkJLnR5cGUgPSBRTVBfUEhZX1VT
QkNfRFAsCj4+ICsJCQkuY2ZnID0gJnFjczYxNV9kcHBoeV9jZmcsCj4+ICsJCX0sCj4+ICAJfSwg
ewo+PiAgCQkuY29tcGF0aWJsZSA9ICJxY29tLHNkbTY2MC1xbXAtdXNiMy1waHkiLAo+PiAtCQku
ZGF0YSA9ICZzZG02NjBfdXNiM3BoeV9jZmcsCj4+ICsJCS5kYXRhID0gICYoc3RydWN0IGRldl9j
ZmcpIHsKPj4gKwkJCS50eXBlID0gUU1QX1BIWV9VU0JDX1VTQiwKPj4gKwkJCS5jZmcgPSAmc2Rt
NjYwX3VzYjNwaHlfY2ZnLAo+PiArCQl9LAo+PiAgCX0sIHsKPj4gIAkJLmNvbXBhdGlibGUgPSAi
cWNvbSxzbTYxMTUtcW1wLXVzYjMtcGh5IiwKPj4gLQkJLmRhdGEgPSAmcWNtMjI5MF91c2IzcGh5
X2NmZywKPj4gKwkJLmRhdGEgPSAgJihzdHJ1Y3QgZGV2X2NmZykgewo+PiArCQkJLnR5cGUgPSBR
TVBfUEhZX1VTQkNfVVNCLAo+PiArCQkJLmNmZyA9ICZxY20yMjkwX3VzYjNwaHlfY2ZnLAo+PiAr
CQl9LAo+PiAgCX0sCj4+ICAJeyB9LAo+PiAgfTsKPj4gKwo+IAo+IAo+IFlvdSBtYWtlIHNvbWUg
cmFuZG9tIGNoYW5nZXMgYWxsIG92ZXIgdGhpcyBmaWxlLiBObywgY2xlYW4gaXQgdXAuCj4gCj4+
ICBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBxbXBfdXNiY19vZl9tYXRjaF90YWJsZSk7Cj4+ICAK
Pj4gIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHFtcF91c2JjX2RyaXZlciA9IHsKPj4K
PiAKPiAKPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
