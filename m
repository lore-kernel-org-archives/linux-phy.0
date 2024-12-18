Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8906E7718A
	for <linux-phy@archiver.kernel.org>; Wed, 18 Dec 2024 12:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TuAOGiBcJj9amfTX31zcAJZje5H1lrY2PX1pdyyetzs=; b=VrNz3+dZxa3naj
	etg0GS7FF9SVU3tgBRmde5SMPxgX/ChKvfWB6BiTeYBwBp5YTuz52/BJlP6yEUdczyjqe8+Q0AHRH
	dt1hl/j5+9gVIoOjBNwogCt0U09JIeqhQ+LtsDJJrU9J8HUjJ6EOwrIAa8QWhPKZFGGWyk4NjvjgJ
	dxuX5dMbvZ68+ciVrH8wScIXXhiDJY4jU4R6iF/61QHLJUF66KshHJN6P9Jp32mJS+z1QHRuIAzxf
	sGjgNsiAX24tzoEz/Nk72EOVUSE5LLcBObrojWNygcvhIHF/bsG9czlp89ZFKZShUanAPnE9WR1fp
	/dQMCQxKDThZ1+f7lKyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNtb8-0000000GeEm-1kTm;
	Wed, 18 Dec 2024 12:56:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNtb6-0000000GeDJ-0UU9
	for linux-phy@lists.infradead.org;
	Wed, 18 Dec 2024 12:56:17 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BI5D5hK014164;
	Wed, 18 Dec 2024 12:56:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5EFi+D8L1sliDzm+pZs/Y3qUJhXMvOXHIkiSpJAY964=; b=R2IMnZh0orlzs4SL
	eW0O4wZHHWPWVDijHIoLvsYcMV2tLz8i+62up42gexTgKbj+K1RUlKSu+6vydKgJ
	caMaBIamhC4QeJVyKSMhIgPUgQuFMUNlwOFvE+syE72WUCb/OaXv2m3jxr97oaOu
	wu4KzAsAsVrU7CDyDOXFKl0Xk2i1rmoold72Lipioy14pEJ4Xbvh5P0nil6iJJGu
	AnQxNpjvfjyn7L/w/TdlO9cOzG1fvM5wc1N+OZD3c/zLmmA8v45UKo/aHHSWmICd
	42VA1nU/fFZ9/VGrfbyuAauYW5X+DxMyZQ7kTYMebu0nL1zzpOWSes1o2q+Nzd4H
	RKxq4Q==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43kr1xs4jd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 18 Dec 2024 12:56:05 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4BICu438019784
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 18 Dec 2024 12:56:04 GMT
Received: from [10.64.16.135] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 18 Dec
 2024 04:55:57 -0800
Message-ID: <df1a4457-129e-452c-8089-ee1e6f9a3e12@quicinc.com>
Date: Wed, 18 Dec 2024 20:55:54 +0800
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
 <527baded-f348-48a8-81cd-3f84c0ff1077@quicinc.com>
 <t5vcjlf44fhae4f2h75cfs3f7r6tdstw4ysmkapvvawj6xp23x@xnxqnxvyhshe>
 <d5151b82-5f05-4826-99b4-e925c20550b4@quicinc.com>
 <7vdaasc3flhpabnorjty5qjorlbp22honuscgpbteakgagg2tq@frqa6flk2mmv>
From: Xiangxu Yin <quic_xiangxuy@quicinc.com>
In-Reply-To: <7vdaasc3flhpabnorjty5qjorlbp22honuscgpbteakgagg2tq@frqa6flk2mmv>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: -kPUvlmlGHd-fDfNQ53Dseg79wQrHHl1
X-Proofpoint-ORIG-GUID: -kPUvlmlGHd-fDfNQ53Dseg79wQrHHl1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 malwarescore=0 adultscore=0 bulkscore=0 mlxlogscore=999
 lowpriorityscore=0 clxscore=1015 spamscore=0 mlxscore=0 priorityscore=1501
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412180103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241218_045616_272756_6B6B3952 
X-CRM114-Status: GOOD (  32.72  )
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

CgpPbiAxMi8xMi8yMDI0IDM6MTUgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gV2Vk
LCBEZWMgMTEsIDIwMjQgYXQgMDg6NTA6MDJQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+
Cj4+Cj4+IE9uIDEyLzExLzIwMjQgNTo0NiBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+
IE9uIFdlZCwgRGVjIDExLCAyMDI0IGF0IDA4OjQ2OjE2QU0gKzA4MDAsIFhpYW5neHUgWWluIHdy
b3RlOgo+Pj4+Cj4+Pj4KPj4+PiBPbiAxMi8xMC8yMDI0IDExOjA5IFBNLCBEbWl0cnkgQmFyeXNo
a292IHdyb3RlOgo+Pj4+PiBPbiBUaHUsIERlYyAwNSwgMjAyNCBhdCAwODozMToyNFBNICswMjAw
LCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4+Pj4gT24gVGh1LCBEZWMgMDUsIDIwMjQgYXQg
MDk6MjY6NDdQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+
Pj4+IE9uIDExLzI5LzIwMjQgMTA6MzMgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+Pj4+
Pj4+IE9uIEZyaSwgMjkgTm92IDIwMjQgYXQgMDk6NTksIFhpYW5neHUgWWluIDxxdWljX3hpYW5n
eHV5QHF1aWNpbmMuY29tPiB3cm90ZToKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBFeHRlbmRlZCBEUCBz
dXBwb3J0IGZvciBRQ1M2MTUgVVNCIG9yIERQIHBoeS4gRGlmZmVyZW50aWF0ZWQgYmV0d2Vlbgo+
Pj4+Pj4+Pj4gVVNCQyBhbmQgRFAgUEhZIHVzaW5nIHRoZSBtYXRjaCB0YWJsZeKAmXMgdHlwZSwg
ZHluYW1pY2FsbHkgZ2VuZXJhdGluZwo+Pj4+Pj4+Pj4gZGlmZmVyZW50IHR5cGVzIG9mIGNmZyBh
bmQgbGF5b3V0IGF0dHJpYnV0ZXMgZHVyaW5nIGluaXRpYWxpemF0aW9uIGJhc2VkCj4+Pj4+Pj4+
PiBvbiB0aGlzIHR5cGUuIFN0YXRpYyB2YXJpYWJsZXMgYXJlIHN0b3JlZCBpbiBjZmcsIHdoaWxl
IHBhcnNlZCB2YWx1ZXMKPj4+Pj4+Pj4+IGFyZSBvcmdhbml6ZWQgaW50byB0aGUgbGF5b3V0IHN0
cnVjdHVyZS4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gV2UgZGlkbid0IGhhdmUgYW4gdW5kZXJzdGFuZGlu
ZyAvIGNvbmNsdXNpb24gd2hldGhlcgo+Pj4+Pj4+PiBxY29tLHVzYi1zc3BoeS1xbXAtdXNiMy1v
ci1kcCBQSFlzIGFyZSBhY3R1YWxseSBhIHNpbmdsZSBkZXZpY2UgLyBQSFkKPj4+Pj4+Pj4gb3Ig
dHdvIFBIWXMgYmVpbmcgcGxhY2VkIG5leHQgdG8gZWFjaCBvdGhlci4gQ291bGQgeW91IHBsZWFz
ZSBzdGFydAo+Pj4+Pj4+PiB5b3VyIGNvbW1pdCBtZXNzYWdlIGJ5IGV4cGxhaW5pbmcgaXQ/IE9y
IGV2ZW4gYmV0dGVyLCBtYWtlIHRoYXQgYSBwYXJ0Cj4+Pj4+Pj4+IG9mIHRoZSBjb3ZlciBsZXR0
ZXIgZm9yIGEgbmV3IHNlcmllcyB0b3VjaGluZyBqdXN0IHRoZSBVU0JDIFBIWQo+Pj4+Pj4+PiBk
cml2ZXIuIERQIGNoYW5nZXMgZG9uJ3QgaGF2ZSBhbnl0aGluZyBpbiBjb21tb24gd2l0aCB0aGUg
UEhZIGNoYW5nZXMsCj4+Pj4+Pj4+IHNvIHlvdSBjYW4gc3BsaXQgdGhlIHNlcmllcyBpbnRvIHR3
by4KPj4+Pj4+Pj4KPj4+Pj4+PiBCZWZvcmUgaW1wbGVtZW50IERQIGV4dGVuc2lvbiwgd2UgaGF2
ZSBkaXNjdXNzZWQgd2l0aCBhYmhpbmF2IGFuZCBrcmlzaG5hIGFib3V0IHdoZXRoZXIgdXNlIGNv
bWJvLCB1c2JjIG9yIHNlcGFyYXRlIHBoeS4KPj4+Pj4+Cj4+Pj4+PiBXaGF0IGlzICJEUCBleHRl
bnNpb24iPwo+Pj4+Pj4KPj4+PiBJJ20gc29ycnkgY29uZnVzaW9uIGNhc3VlZCBieSBteSBkZXNj
cmlwdGlvbi4gSXQncyBtZWFucyBleHRlbmQgRFAgaW1wbGVtbnQgZm9yIFVTQkMgcGh5IGRyaXZl
ci4KPj4+Pj4+Pgo+Pj4+Pj4+IFdlIGlkZW50aWZpZWQgdGhhdCBEUCBhbmQgVVNCIHNoYXJlIHNv
bWUgY29tbW9uIGNvbnRyb2xzIGZvciBwaHlfbW9kZSBhbmQgb3JpZW50YXRpb24uCj4+Pj4+Pj4g
U3BlY2lmaWNhbGx5LCAnVENTUl9VU0IzXzBfRFBfUEhZTU9ERScgY29udHJvbHMgd2hvIG11c3Qg
dXNlIHRoZSBsYW5lcyAtIFVTQiBvciBEUCwKPj4+Pj4+PiB3aGlsZSBQRVJJUEhfU1NfVVNCMF9V
U0IzUEhZX1BDU19NSVNDX1RZUEVDX0NUUkwgY29udHJvbHMgdGhlIG9yaWVudGF0aW9uLgo+Pj4+
Pj4+IEl0IHdvdWxkIGJlIG1vcmUgZWZmaWNpZW50IGZvciBhIHNpbmdsZSBkcml2ZXIgdG8gbWFu
YWdlIHRoZXNlIGNvbnRyb2xzLiAKPj4+Pj4+Cj4+Pj4+PiBUaGUgcXVlc3Rpb24gaXMgYWJvdXQg
dGhlIGhhcmR3YXJlLCBub3QgYWJvdXQgdGhlIGRyaXZlci4KPj4+Pj4+Cj4+Pj4+Pj4gQWRkaXRp
b25hbGx5LCB0aGlzIFBIWSBkb2VzIG5vdCBzdXBwb3J0IEFsdCBNb2RlLCBhbmQgdGhlIHR3byBj
b250cm9sIHJlZ2lzdGVycyBhcmUgbG9jYXRlZCBpbiBzZXBhcmF0ZSBhZGRyZXNzIHNwYWNlcy4g
Cj4+Pj4+Pj4gVGhlcmVmb3JlLCBldmVuIHRob3VnaCB0aGUgb3JpZW50YXRpb24gZm9yIERQIG9u
IHRoaXMgcGxhdGZvcm0gaXMgYWx3YXlzIG5vcm1hbCBhbmQgY29ubmVjdGVkIHRvIHRoZSB2aWRl
byBvdXRwdXQgYm9hcmQsIAo+Pj4+Pj4+IHdlIHN0aWxsIGRlY2lkZWQgdG8gYmFzZSBpdCBvbiB0
aGUgVVNCQyBleHRlbnNpb24uCj4+Pj4+Pgo+Pj4+Pj4gQ291bGQgeW91IHBsZWFzZSBjbGFyaWZ5
LCBkbyB1c2IzLW9yLWRwIFBIWXMgc3VwcG9ydCBEUC1vdmVyLVVTQi1DPyBJCj4+Pj4+PiB0aG91
Z2h0IHRoYXQgdXNiYy1vci1kcCBwbGF0Zm9ybXMgc3VwcG9ydCB0aGF0LCBidXQgdGhleSBkb24n
dAo+Pj4+Pj4gc3VwcG9ydCBEUCtVU0IgcGluIGNvbmZpZ3VyYXRpb24uIE5vdGUsIHRoZSBxdWVz
dGlvbiBpcyBicm9hZGVyIHRoYW4KPj4+Pj4+IGp1c3QgUUNTNjE1LCBpdCBjb3ZlcnMgdGhlIFBI
WSB0eXBlIGl0c2VsZi4KPj4+Pj4+Cj4+Pj4+PiBBbHNvLCBpcyBUQ1NSIGNvbmZpZ3VyYXRpb24g
cmVhZC93cml0ZSBvciByZWFkLW9ubHk/IEFyZSB3ZSBzdXBwb3NlZCB0bwo+Pj4+Pj4gc2V0IHRo
ZSByZWdpc3RlciBmcm9tIE9TIG9yIGFyZSB3ZSBzdXBwb3NlZCB0byByZWFkIGl0IGFuZCB0aHVz
IGRldGVtaW5lCj4+Pj4+PiB0aGUgUEhZIG1vZGU/Cj4+Pj4+Cj4+Pj4+IEFueSB1cGRhdGVzIG9u
IHRoZXNlIHR3byB0b3BpY3M/Cj4+Pj4+Cj4+Pj4gU3RpbGwgY29uZmlybWluZyBkZXRhaWwgaW5m
byB3aXRoIEhXICYgZGVzaWduIHRlYW0uCj4+Pj4gSeKAmWxsIHVwZGF0ZSB0aGUgaW5mb3JtYXRp
b24gdGhhdCBoYXMgYmVlbiBjb25maXJtZWQgc28gZmFyLgo+Pj4+IFRoaXMgcGh5IHN1cHBvcnQg
RFAtb3Zlci1VU0ItQyxidXQgaXQncyBub3Qgc3VwcG9ydCBhbHQtbW9kZSB3aGljaCAyIGxhbmUg
d29yayBmb3IgRFAsIG90aGVyIDIgbGFuZSB3b3JrIGZvciBVU0IuCj4+Pj4gVENTUiBwaHkgbW9k
ZSBpcyByZWFkL3dyaXRlIHJlZyBhbmQgd2UgY2FuIHJlYWQgZm9yIGRldGVybWluZSBwaHkgbW9k
ZS4KPj4+Cj4+PiBPaywgdGhhbmtzIGZvciB0aGUgZXhwbGFuYXRpb24uIEZyb20gbXkgcG9pbnQg
b2YgdmlldzoKPj4+Cj4+PiAtIEltcGxlbWVudCB0aGUgRFAgUEhZIHRvIGJlIGEgcGFydCBvZiB0
aGUgc2FtZSBkcml2ZXIuIEVhY2ggZGV2aWNlCj4+PiAgIHN1cHBvcnRlZCBieSB0aGUgdXNiYyBk
cml2ZXIgc2hvdWxkIGdldCBib3RoIFBIWXMuCj4+Pgo+Pj4gLSBNYWtlIHN1cmUgbm90IHRvIGJy
ZWFrIHRoZSBBQkk6ICNwaHktY2VsbHMgPSA8MD4gc2hvdWxkIHN0aWxsIHdvcmsgYW5kCj4+PiAg
IHJldHVybiBVU0IgUEhZLCBrZWVwaW5nIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5LiBOZXdlciBk
ZXZpY2VzIG9yCj4+PiAgIHVwZ3JhZGVkIERUIGZvciBvbGQgZGV2aWNlcyBzaG91bGQgcmV0dXJu
IFVTQiBQSFkgZm9yIDwuLi4gMD4gYW5kIERQCj4+PiAgIFBIWSBmb3IgPC4uLiAxPi4KPj4+Cj4+
IFllcywgY3VycmVudGx5IHdlIGhhdmUgaW1wbGVtZW50ZWQgbGlrZSB5b3VyIGRlc2NyaXB0aW9u
LAo+PiBFYWNoIGRlaXZjZSBzaG91ZCBnZXQgYm90aCBQSFlzLCBEUCBQSFkgZm9yIDwuLi4gMT4g
YW5kIFVTQiBQSFkgZm9yIDwuLi4gMD4uCj4gCj4gUGxlYXNlIG5vdGUgdGhlIGJhY2t3YXJkcyBj
b21wYXRpYmlsaXR5IGNsYXVzZS4KPiAKRm9yIHRoZSBVU0Igbm9kZSwgd2Uga2VwdCB0aGUgc2Ft
ZSBpbXBsZW1lbnRhdGlvbiBhcyB0aGUgb3JpZ2luYWwgZnVuY3Rpb24gaW50ZXJmYWNlLCBhbmQg
dGhlIGRldmljZXRyZWUgbm9kZSBkZWZpbml0aW9uIGFsc28gcmVtYWlucyB1bmNoYW5nZWQuCklu
IHN1YnNlcXVlbnQgcGF0Y2hlcywgSSB3aWxsIGZvbGxvdyBLcnp5c3p0b2bigJlzIHN1Z2dlc3Rp
b24gdG8gdXNlIGEgc2VwYXJhdGUgRFQtYmluZGluZyB0byBkZXNjcmliZSB0aGUgRFAgUEhZIGNv
bmZpZ3VyYXRpb24sIAp3aXRob3V0IG1ha2luZyBjaGFuZ2VzIHRvIHRoZSBVU0IgZGV2aWNldHJl
ZSBhbmQgRFQtYmluZGluZyBpbXBsZW1lbnRhdGlvbi4KPj4+IC0gSSdtIG5vdCBzaHVyZSBob3cg
dG8gaGFuZGxlIHRoZSBVU0IgYW5kIERQIGNvZXhpc3RlbmNlLCBlc3BlY2lhbGx5IGluCj4+PiAg
IHlvdXIgY2FzZSBvZiB0aGUgVVNCLW9yLURQIFBIWS4KPj4+Cj4+IEZvciBjb2V4aXN0ZW5jZSBw
cm9jZXNzOgo+Pgo+PiBXaGVuIHdlIHN0YXJ0IGltcGxlbWVudCBEUCBwYXJ0LCB1c2IgZHJpdmVy
IHRlYW0gc2FpZCBvbmx5IG5lZWQgY29uZmlnIFRDU1IgcGh5IG1vZGUgYW5kIG9yaWVudGF0aW9u
IGR1cmluZyBzd2l0Y2ggaW4gVVNCLUMgcG9ydC4KPj4gQmFzZWQgb24geW91ciBwcmV2aW91cyBj
b21tZW50cyBhdm91dCBTV19QV1JETiwgSSdtIGNvbmZpcm1pbmcgd2l0aCB0aGUgVVNCIHRlYW0g
d2hldGhlciBTV19SRVNUL1NXUFdSRE4vU1RBUlRfQ1RSTCByZWdpc3RlcnMgbWlnaHQgYWZmZWN0
IERQLgo+IAo+IFRoYW5rcyEKPiAKPj4gQW55d2F5LCBldmVuIHRob3VnaCB0aGUgb3JpZ2luYWwg
U29DIGRlc2lnbiBzdXBwb3J0cyBEUCBvciBVU0Igb3ZlciBUeXBlLUPvvIwKPj4gYnV0IG9uIFFD
UzYxNSBBRFAgQUlSIHBsYXRmb3JtLCB0aGVyZSBhcmUgb25seSBmb3VyIFVTQi1BIHBvcnQgd2hp
Y2ggd29ya3Mgd2l0aCAncWNzNjE1LXFtcC11c2IzLXBoeScgZHJpdmVyLCBhbmQgbm8gVVNCLUMg
cG9ydC4KPj4gRFAgcG9ydCBpcyBtYXBwcGVkIGZyb20gdXNiIHBpbiB0byB0aGUgdmlkZW8gb3V0
IHN1Yi1ib2FyZC4KPj4gc28gd2UgYXJlIHVuYWJsZSB0byB2ZXJpZnkgdGhlIHN3aXRjaGluZyBj
YXNlIGJldHdlZW4gRFAgYW5kIFVTQiBkZXZpY2VzIHVuZGVyIFVTQi1DLgo+IAo+IFRoYXQncyBh
bHNvIGZpbmUuIFdlIHdpbGwgZ2V0IHRvIHRoYXQgcG9pbnQgb25jZSBNU004OTk4IC8gU0RNNjYw
Cj4gZ2V0IFVTQi1DIHN1cHBvcnQgKHRoZSBvbmx5IGN1cnJlbnQgYmxvY2tlciBpcyB0aGUgc3Vw
cG9ydCBmb3IgdGhlCj4gVFlQRUMgYmxvY2sgb2YgdGhlIFBNSTg5OTgpLgo+IApJIGNhbid0IGFj
Y2VzcyBNU004OTk4IC8gU0RNNjYwIGRvY3VtZW50cyBub3csIGJ1dCBJIGhhdmUgY29uZmlybWVk
IGRldGFpbCBpbmZvIGFib3V0IFVTQiAmIERQIHBoeSBkZXNpZ24gZm9yIHNtNjE1MC4KClRoZSAn
dXNiLXNzcGh5LXFtcC11c2IzLW9yLWRwIFBIWScgb24gdGhlIGN1cnJlbnQgcGxhdGZvcm0gaXMg
ZXNzZW50aWFsbHkgY29tcG9zZWQgb2YgdGhyZWUgc3ViLVBIWXMsIAp3aGljaCBjYW4gZXZlbiBi
ZSBjb25zaWRlcmVkIGFzIHRocmVlIHNlcGFyYXRlIFBIWXM6IFVTQjMgcHJpbWFyeSBQSFksIFVT
QjMgc2Vjb25kYXJ5IFBIWSwgYW5kIFVTQjMgRFAgUEhZLgoKT24gdGhlIFFDUzYxNSwgdGhlIFVT
QiBwcmltYXJ5IFBIWSBpcyBjdXJyZW50bHkgdXNlZCB0byBoYW5kbGUgVVNCIDMuMCBjb21tdW5p
Y2F0aW9uIGZvciB0aGUgcHJldmlvdXNseSBtZW50aW9uZWQgZm91ciBVU0IgVHlwZS1BIHBvcnRz
LCAKd2hpbGUgdGhlIFVTQjMgc2Vjb25kYXJ5IFBIWSBhbmQgVVNCMyBEUCBQSFkgYXJlIHVzZWQg
Zm9yIHRoZSBvdXRwdXQgb2YgdGhlIFR5cGUtQyBwb3J0LApidXQgc2luY2UgdGhlIFR5cGUtQyBw
b3J0IGlzIGZvcmNpYmx5IHBpbi10by1waW4gY29uZmlndXJlZCB0byB0aGUgdmlkZW8gb3V0IGJv
YXJkLCB0aGUgVHlwZS1DIHBvcnQgd2lsbCBhbHdheXMgY29uZmlndXJlIGFzIERQIFBIWS4KClRo
ZSBpbnRlcm5hbCByZWdpc3RlcnMgb2YgdGhlc2UgdGhyZWUgUEhZcyBhcmUgaW5kZXBlbmRlbnQg
b2YgZWFjaCBvdGhlciwgTmVpdGhlciB0aGVpciByZXNwZWN0aXZlIFNXUFdSX0ROIG5vciBTV1JT
VCB3aWxsIGFmZmVjdCB0aGUgb3RoZXIgdHdvIFBIWXMuCkFkZGl0aW9uYWxseSwgdGhlcmUgd2Fz
IGEgbWlzdW5kZXJzdGFuZGluZyBhYm91dCB0aGUgb3JpZW50YXRpb24gcHJldmlvdXNseS4KVGhl
IFVTQiBvcmllbnRhdGlvbiBzZXR0aW5nIG9ubHkgYWZmZWN0cyB0aGUgY3VycmVudCBQSFkgYW5k
IGRvZXMgbm90IGltcGFjdCB0aGUgRFAgUEhZLiBUaGUgRFAgUEhZIGlzIGNvbmZpZ3VyZWQgaW4g
dGhlIERQX1BIWV9DRkdfMS4KClRTQ1JfUEhZX01PREUgY2FuIHNwZWNpZnkgd2hpY2ggUEhZIG91
dHB1dHMgdG8gdGhlIFR5cGUtQyBwb3J0LCBhbmQgdGhlIGdsb2JhbCByZXNldCB3aWxsIHNpbXVs
dGFuZW91c2x5IHJlc2V0IHRoZSB0d28gYXNzb2NpYXRlZCBQSFlzLiAKVGhlcmVmb3JlLCB0aGUg
Y29ycmVjdCBzd2l0Y2hpbmcgcHJvY2VzcyBpcyBhcyBmb2xsb3dzLgpXaGVuIHN3aXRjaGluZyB0
aGUgaW5zZXJ0ZWQgZGV2aWNlOgoJMS5JZGVudGlmeSB0aGUgUEhZIHR5cGUuCgkyLkVuYWJsZSB0
aGUgcmVndWxhdG9yLgoJMy5UcmlnZ2VyIGEgcmVzZXQuCgk0LkVuYWJsZSB0aGUgY2xvY2suCgk1
LkNvbmZpZ3VyZSBQSFkgdHlwZSByZWxhdGVkIG9yaWVudGF0aW9uCgk2LnN3aXRjaCB0aGUgVENT
UiBQSFkgbW9kZS4KCTcuQ29uZmlndXJlIHRoZSByZWdpc3RlcnMgb2YgUEhZLgpEdXJpbmcgcmVs
ZWFzZToKCTEuUmVzZXQuCgkyLkRpc2FibGUgdGhlIGNsb2NrLgoJMy5EaXNhYmxlIHRoZSByZWd1
bGF0b3IuCgpPdXIgY3VycmVudCBkZXNpZ24gb3ZlcmFsbCBjb21wbGllcyB3aXRoIHRoaXMgcHJv
Y2VzcywgYnV0IGl0IGxhY2tzIHRoZSBjb25maWd1cmF0aW9uIGZvciBEUF9QSFlfQ0ZHXzEuCgpT
aGFsbCB3ZSBjb250aW51ZSB0aGUgZGlzY3Vzc2lvbiB0byBjbGFyaWZ5IHJlbWFpbiBjb21tZW50
cyBvZiB0aGUgVVNCQyBkcml2ZXI/Cgo+PiBIb3dldmVyLCBJJ20gYWxzbyBjb25maXJtaW5nIHdo
ZXRoZXIgYW55dGhpbmcgb3RoZXIgd2lsbCBhZmZlY3QgVVNCIGFuZCBEUCBlYWNoIG90aGVyLgo+
IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
