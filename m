Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A88AE7717F
	for <linux-phy@archiver.kernel.org>; Wed, 11 Dec 2024 00:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=75rNwDqCgy3XN7VCQcwjqGhRSMLpfdoHj4TIIRm9G5M=; b=ntATu5mT3SKo84
	SuUze0tRgLRHQPNm02c3RTYa8PTQgCoZ7AVo3rsJBmlXzWg9Ox3GFipSRNzBhqknOGJ6e8nF7S06J
	60O9v7hlcv/OhTeAJ8p6xVEGZ26f1D00fHXtbu6e0Pl9DRwks5SgLMzDQpaaLWi8aFiQLAzRov+p2
	ABUW5sYPisvYLlkOygZj3l3ktsXS4awg5xglCFDgzcznLvYhPZRuXi75MpuqWDNaFcf6weGU0Uf56
	Wsnw7/bFOsGhNN/QLWNvsaNuWF937UVSNlAi9Lfq63LkWtrVRmAhaVA7mJWZnukbFZaOXe3CZFRja
	oJRVDyo4c8Q7EHgn25JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLAs9-0000000DKSJ-3O84;
	Wed, 11 Dec 2024 00:46:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLAs6-0000000DKRs-3MxZ
	for linux-phy@lists.infradead.org;
	Wed, 11 Dec 2024 00:46:35 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BADXbp4014608;
	Wed, 11 Dec 2024 00:46:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pOvQ4kEW5+JbIoo3oLAx3A6GmkI7mBSEDvoz1mE4eXw=; b=KjCTQrhBUH38ytjN
	RUtbiO/IEO49nRXsFTPDMtuOEqVqcvodDRVk5i8iitWNs2a8WE6Q1ZwVJo7OQi7y
	cXvEum9l7opxX4RhHY4nXSUoZsL2bnmNBCwwS2+i05Q2THqox6sGVMGx7mueioXY
	PnJ24Hy3X644/kanKm5OxEu7Os4VR507b4b6Wm9pTB6GcvB/TTJC5aJ+0XbD6rzn
	nSCS2LnaRLNzK70P7nXChTrJVcaCll0nh3ht+BLRbF9pxgvZaw1g9vaoNCmRVKt9
	/HP8JdX0Ahy2FZwpmOoN0CqY5JBJvx+jsnKQqYu0uoY2F/nhObKJp11xoPFcKtLd
	4MFU3Q==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43ee3nb71x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Dec 2024 00:46:25 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4BB0kPcP029536
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Dec 2024 00:46:25 GMT
Received: from [10.64.16.135] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 10 Dec
 2024 16:46:18 -0800
Message-ID: <527baded-f348-48a8-81cd-3f84c0ff1077@quicinc.com>
Date: Wed, 11 Dec 2024 08:46:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] phy: qcom: qmp-usbc: Add DP phy mode support on
 QCS615
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
 <20241129-add-displayport-support-for-qcs615-platform-v1-3-09a4338d93ef@quicinc.com>
 <CAA8EJppOR_UXoVpMt-dhfWdCz3UNfsXGdz8X9NqpaSmYj3AZDg@mail.gmail.com>
 <5ea14162-567b-462d-be02-b73b954b7507@quicinc.com>
 <5whv4z7u6fkfwlv5muox5dmv6fow4mga76ammapw7wph7vwv3f@xibcjdfqorgf>
 <iqcofcntirmlwcpyfr4yabymqfcgyrij57bibf337tmxpa73t6@npkt6wquenf6>
From: Xiangxu Yin <quic_xiangxuy@quicinc.com>
In-Reply-To: <iqcofcntirmlwcpyfr4yabymqfcgyrij57bibf337tmxpa73t6@npkt6wquenf6>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: ygGzruQ_LQRZ7QNeIARNz0cm5J1Cy4Os
X-Proofpoint-ORIG-GUID: ygGzruQ_LQRZ7QNeIARNz0cm5J1Cy4Os
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 malwarescore=0 spamscore=0 priorityscore=1501 mlxscore=0 impostorscore=0
 mlxlogscore=999 lowpriorityscore=0 adultscore=0 clxscore=1015 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412110004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_164634_846368_BDD6EAC6 
X-CRM114-Status: GOOD (  19.31  )
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

CgpPbiAxMi8xMC8yMDI0IDExOjA5IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIFRo
dSwgRGVjIDA1LCAyMDI0IGF0IDA4OjMxOjI0UE0gKzAyMDAsIERtaXRyeSBCYXJ5c2hrb3Ygd3Jv
dGU6Cj4+IE9uIFRodSwgRGVjIDA1LCAyMDI0IGF0IDA5OjI2OjQ3UE0gKzA4MDAsIFhpYW5neHUg
WWluIHdyb3RlOgo+Pj4KPj4+Cj4+PiBPbiAxMS8yOS8yMDI0IDEwOjMzIFBNLCBEbWl0cnkgQmFy
eXNoa292IHdyb3RlOgo+Pj4+IE9uIEZyaSwgMjkgTm92IDIwMjQgYXQgMDk6NTksIFhpYW5neHUg
WWluIDxxdWljX3hpYW5neHV5QHF1aWNpbmMuY29tPiB3cm90ZToKPj4+Pj4KPj4+Pj4gRXh0ZW5k
ZWQgRFAgc3VwcG9ydCBmb3IgUUNTNjE1IFVTQiBvciBEUCBwaHkuIERpZmZlcmVudGlhdGVkIGJl
dHdlZW4KPj4+Pj4gVVNCQyBhbmQgRFAgUEhZIHVzaW5nIHRoZSBtYXRjaCB0YWJsZeKAmXMgdHlw
ZSwgZHluYW1pY2FsbHkgZ2VuZXJhdGluZwo+Pj4+PiBkaWZmZXJlbnQgdHlwZXMgb2YgY2ZnIGFu
ZCBsYXlvdXQgYXR0cmlidXRlcyBkdXJpbmcgaW5pdGlhbGl6YXRpb24gYmFzZWQKPj4+Pj4gb24g
dGhpcyB0eXBlLiBTdGF0aWMgdmFyaWFibGVzIGFyZSBzdG9yZWQgaW4gY2ZnLCB3aGlsZSBwYXJz
ZWQgdmFsdWVzCj4+Pj4+IGFyZSBvcmdhbml6ZWQgaW50byB0aGUgbGF5b3V0IHN0cnVjdHVyZS4K
Pj4+Pgo+Pj4+IFdlIGRpZG4ndCBoYXZlIGFuIHVuZGVyc3RhbmRpbmcgLyBjb25jbHVzaW9uIHdo
ZXRoZXIKPj4+PiBxY29tLHVzYi1zc3BoeS1xbXAtdXNiMy1vci1kcCBQSFlzIGFyZSBhY3R1YWxs
eSBhIHNpbmdsZSBkZXZpY2UgLyBQSFkKPj4+PiBvciB0d28gUEhZcyBiZWluZyBwbGFjZWQgbmV4
dCB0byBlYWNoIG90aGVyLiBDb3VsZCB5b3UgcGxlYXNlIHN0YXJ0Cj4+Pj4geW91ciBjb21taXQg
bWVzc2FnZSBieSBleHBsYWluaW5nIGl0PyBPciBldmVuIGJldHRlciwgbWFrZSB0aGF0IGEgcGFy
dAo+Pj4+IG9mIHRoZSBjb3ZlciBsZXR0ZXIgZm9yIGEgbmV3IHNlcmllcyB0b3VjaGluZyBqdXN0
IHRoZSBVU0JDIFBIWQo+Pj4+IGRyaXZlci4gRFAgY2hhbmdlcyBkb24ndCBoYXZlIGFueXRoaW5n
IGluIGNvbW1vbiB3aXRoIHRoZSBQSFkgY2hhbmdlcywKPj4+PiBzbyB5b3UgY2FuIHNwbGl0IHRo
ZSBzZXJpZXMgaW50byB0d28uCj4+Pj4KPj4+IEJlZm9yZSBpbXBsZW1lbnQgRFAgZXh0ZW5zaW9u
LCB3ZSBoYXZlIGRpc2N1c3NlZCB3aXRoIGFiaGluYXYgYW5kIGtyaXNobmEgYWJvdXQgd2hldGhl
ciB1c2UgY29tYm8sIHVzYmMgb3Igc2VwYXJhdGUgcGh5Lgo+Pgo+PiBXaGF0IGlzICJEUCBleHRl
bnNpb24iPwo+PgpJJ20gc29ycnkgY29uZnVzaW9uIGNhc3VlZCBieSBteSBkZXNjcmlwdGlvbi4g
SXQncyBtZWFucyBleHRlbmQgRFAgaW1wbGVtbnQgZm9yIFVTQkMgcGh5IGRyaXZlci4KPj4+Cj4+
PiBXZSBpZGVudGlmaWVkIHRoYXQgRFAgYW5kIFVTQiBzaGFyZSBzb21lIGNvbW1vbiBjb250cm9s
cyBmb3IgcGh5X21vZGUgYW5kIG9yaWVudGF0aW9uLgo+Pj4gU3BlY2lmaWNhbGx5LCAnVENTUl9V
U0IzXzBfRFBfUEhZTU9ERScgY29udHJvbHMgd2hvIG11c3QgdXNlIHRoZSBsYW5lcyAtIFVTQiBv
ciBEUCwKPj4+IHdoaWxlIFBFUklQSF9TU19VU0IwX1VTQjNQSFlfUENTX01JU0NfVFlQRUNfQ1RS
TCBjb250cm9scyB0aGUgb3JpZW50YXRpb24uCj4+PiBJdCB3b3VsZCBiZSBtb3JlIGVmZmljaWVu
dCBmb3IgYSBzaW5nbGUgZHJpdmVyIHRvIG1hbmFnZSB0aGVzZSBjb250cm9scy4gCj4+Cj4+IFRo
ZSBxdWVzdGlvbiBpcyBhYm91dCB0aGUgaGFyZHdhcmUsIG5vdCBhYm91dCB0aGUgZHJpdmVyLgo+
Pgo+Pj4gQWRkaXRpb25hbGx5LCB0aGlzIFBIWSBkb2VzIG5vdCBzdXBwb3J0IEFsdCBNb2RlLCBh
bmQgdGhlIHR3byBjb250cm9sIHJlZ2lzdGVycyBhcmUgbG9jYXRlZCBpbiBzZXBhcmF0ZSBhZGRy
ZXNzIHNwYWNlcy4gCj4+PiBUaGVyZWZvcmUsIGV2ZW4gdGhvdWdoIHRoZSBvcmllbnRhdGlvbiBm
b3IgRFAgb24gdGhpcyBwbGF0Zm9ybSBpcyBhbHdheXMgbm9ybWFsIGFuZCBjb25uZWN0ZWQgdG8g
dGhlIHZpZGVvIG91dHB1dCBib2FyZCwgCj4+PiB3ZSBzdGlsbCBkZWNpZGVkIHRvIGJhc2UgaXQg
b24gdGhlIFVTQkMgZXh0ZW5zaW9uLgo+Pgo+PiBDb3VsZCB5b3UgcGxlYXNlIGNsYXJpZnksIGRv
IHVzYjMtb3ItZHAgUEhZcyBzdXBwb3J0IERQLW92ZXItVVNCLUM/IEkKPj4gdGhvdWdodCB0aGF0
IHVzYmMtb3ItZHAgcGxhdGZvcm1zIHN1cHBvcnQgdGhhdCwgYnV0IHRoZXkgZG9uJ3QKPj4gc3Vw
cG9ydCBEUCtVU0IgcGluIGNvbmZpZ3VyYXRpb24uIE5vdGUsIHRoZSBxdWVzdGlvbiBpcyBicm9h
ZGVyIHRoYW4KPj4ganVzdCBRQ1M2MTUsIGl0IGNvdmVycyB0aGUgUEhZIHR5cGUgaXRzZWxmLgo+
Pgo+PiBBbHNvLCBpcyBUQ1NSIGNvbmZpZ3VyYXRpb24gcmVhZC93cml0ZSBvciByZWFkLW9ubHk/
IEFyZSB3ZSBzdXBwb3NlZCB0bwo+PiBzZXQgdGhlIHJlZ2lzdGVyIGZyb20gT1Mgb3IgYXJlIHdl
IHN1cHBvc2VkIHRvIHJlYWQgaXQgYW5kIHRodXMgZGV0ZW1pbmUKPj4gdGhlIFBIWSBtb2RlPwo+
IAo+IEFueSB1cGRhdGVzIG9uIHRoZXNlIHR3byB0b3BpY3M/Cj4gClN0aWxsIGNvbmZpcm1pbmcg
ZGV0YWlsIGluZm8gd2l0aCBIVyAmIGRlc2lnbiB0ZWFtLgpJ4oCZbGwgdXBkYXRlIHRoZSBpbmZv
cm1hdGlvbiB0aGF0IGhhcyBiZWVuIGNvbmZpcm1lZCBzbyBmYXIuClRoaXMgcGh5IHN1cHBvcnQg
RFAtb3Zlci1VU0ItQyxidXQgaXQncyBub3Qgc3VwcG9ydCBhbHQtbW9kZSB3aGljaCAyIGxhbmUg
d29yayBmb3IgRFAsIG90aGVyIDIgbGFuZSB3b3JrIGZvciBVU0IuClRDU1IgcGh5IG1vZGUgaXMg
cmVhZC93cml0ZSByZWcgYW5kIHdlIGNhbiByZWFkIGZvciBkZXRlcm1pbmUgcGh5IG1vZGUuCgoK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
