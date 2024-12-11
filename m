Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8952E7717D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Dec 2024 13:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n0Gp5T/Cl+ipQCLhg+v/yLwLdZ9YfSdGUjiO12SfpTg=; b=zFeQ7HwyNJbUEL
	Q87/qO9/mB+YNjzkmL787SQQTjV/zo6YhlrdK1MZyNTcUPE8JJP2THFbyQYHKmLtD3CpNLehYh05h
	IVYWsW3XvWymGKWeRGLBpwvHU4cd/fxfAPvyEtlcStc6l12oWoX4n8TKk85C6qMyOXExDDrrJjEOM
	PfqnSuwlo66OEXkhJE1UMLy/B033S8PG7MDSOan6nqsNkrZ96pY8RcRrCZEEeS7UptS1TkIf5avp/
	P7oVe65Zi/oO0ExQvJGlus7KnDRiY3pFA5m1VvzimMfoJEuR2XZ710uh6E48aCnmF6kqwOh1MEsWx
	VR7cpaNcQKak3DC9JHwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLMLr-0000000EuiN-1D06;
	Wed, 11 Dec 2024 13:02:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLMAa-0000000Esso-3gBk
	for linux-phy@lists.infradead.org;
	Wed, 11 Dec 2024 12:50:26 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BBAokM2006981;
	Wed, 11 Dec 2024 12:50:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zk4s7vhB2asnvEBnYuTFCimLlmm/nGDu1HLQOKCWzJw=; b=bKHlB12Jc8cR9Zp4
	/EF33Rrz2D9AwqIyHOV5F1upJtrVWdK1NJn3tfowkFdhpPIj7/wGLCiGjgx7KchR
	tHdxHg8Vt/dadt2UERt8XsQ1wpOEudK1WorLRGBu2l6EQb4U8avn0yxwThtrA+eN
	XeNR8i2DeyOjPcQ8t1vNVl925MX25zjNjb/pVjitF8WQNyOaWQ12CobMMICCWgCT
	OQIgvGu9ppiUGoMr9H/8nv26lrxm0qUYRME+Irxx0dpEEZSArssg0mSygxrYgdfT
	DJkBAyM0Gh2mVkb2C6i51qmsUBHECMAlhZyGC8qOi4dHLo3SyAQYzQZXnlXt/i2s
	RKsFhw==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43f0r9swvp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Dec 2024 12:50:13 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4BBCoCuX026022
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Dec 2024 12:50:12 GMT
Received: from [10.64.16.135] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 11 Dec
 2024 04:50:05 -0800
Message-ID: <d5151b82-5f05-4826-99b4-e925c20550b4@quicinc.com>
Date: Wed, 11 Dec 2024 20:50:02 +0800
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
From: Xiangxu Yin <quic_xiangxuy@quicinc.com>
In-Reply-To: <t5vcjlf44fhae4f2h75cfs3f7r6tdstw4ysmkapvvawj6xp23x@xnxqnxvyhshe>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: YEcBUSMTawlFVl6QGG7shl_PtInvRli7
X-Proofpoint-GUID: YEcBUSMTawlFVl6QGG7shl_PtInvRli7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 phishscore=0 spamscore=0 clxscore=1015 mlxlogscore=999
 malwarescore=0 lowpriorityscore=0 mlxscore=0 bulkscore=0 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412110093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_045025_044483_8EBFD602 
X-CRM114-Status: GOOD (  25.60  )
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

CgpPbiAxMi8xMS8yMDI0IDU6NDYgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gV2Vk
LCBEZWMgMTEsIDIwMjQgYXQgMDg6NDY6MTZBTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+
Cj4+Cj4+IE9uIDEyLzEwLzIwMjQgMTE6MDkgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+
PiBPbiBUaHUsIERlYyAwNSwgMjAyNCBhdCAwODozMToyNFBNICswMjAwLCBEbWl0cnkgQmFyeXNo
a292IHdyb3RlOgo+Pj4+IE9uIFRodSwgRGVjIDA1LCAyMDI0IGF0IDA5OjI2OjQ3UE0gKzA4MDAs
IFhpYW5neHUgWWluIHdyb3RlOgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBPbiAxMS8yOS8yMDI0IDEwOjMz
IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4+Pj4gT24gRnJpLCAyOSBOb3YgMjAyNCBh
dCAwOTo1OSwgWGlhbmd4dSBZaW4gPHF1aWNfeGlhbmd4dXlAcXVpY2luYy5jb20+IHdyb3RlOgo+
Pj4+Pj4+Cj4+Pj4+Pj4gRXh0ZW5kZWQgRFAgc3VwcG9ydCBmb3IgUUNTNjE1IFVTQiBvciBEUCBw
aHkuIERpZmZlcmVudGlhdGVkIGJldHdlZW4KPj4+Pj4+PiBVU0JDIGFuZCBEUCBQSFkgdXNpbmcg
dGhlIG1hdGNoIHRhYmxl4oCZcyB0eXBlLCBkeW5hbWljYWxseSBnZW5lcmF0aW5nCj4+Pj4+Pj4g
ZGlmZmVyZW50IHR5cGVzIG9mIGNmZyBhbmQgbGF5b3V0IGF0dHJpYnV0ZXMgZHVyaW5nIGluaXRp
YWxpemF0aW9uIGJhc2VkCj4+Pj4+Pj4gb24gdGhpcyB0eXBlLiBTdGF0aWMgdmFyaWFibGVzIGFy
ZSBzdG9yZWQgaW4gY2ZnLCB3aGlsZSBwYXJzZWQgdmFsdWVzCj4+Pj4+Pj4gYXJlIG9yZ2FuaXpl
ZCBpbnRvIHRoZSBsYXlvdXQgc3RydWN0dXJlLgo+Pj4+Pj4KPj4+Pj4+IFdlIGRpZG4ndCBoYXZl
IGFuIHVuZGVyc3RhbmRpbmcgLyBjb25jbHVzaW9uIHdoZXRoZXIKPj4+Pj4+IHFjb20sdXNiLXNz
cGh5LXFtcC11c2IzLW9yLWRwIFBIWXMgYXJlIGFjdHVhbGx5IGEgc2luZ2xlIGRldmljZSAvIFBI
WQo+Pj4+Pj4gb3IgdHdvIFBIWXMgYmVpbmcgcGxhY2VkIG5leHQgdG8gZWFjaCBvdGhlci4gQ291
bGQgeW91IHBsZWFzZSBzdGFydAo+Pj4+Pj4geW91ciBjb21taXQgbWVzc2FnZSBieSBleHBsYWlu
aW5nIGl0PyBPciBldmVuIGJldHRlciwgbWFrZSB0aGF0IGEgcGFydAo+Pj4+Pj4gb2YgdGhlIGNv
dmVyIGxldHRlciBmb3IgYSBuZXcgc2VyaWVzIHRvdWNoaW5nIGp1c3QgdGhlIFVTQkMgUEhZCj4+
Pj4+PiBkcml2ZXIuIERQIGNoYW5nZXMgZG9uJ3QgaGF2ZSBhbnl0aGluZyBpbiBjb21tb24gd2l0
aCB0aGUgUEhZIGNoYW5nZXMsCj4+Pj4+PiBzbyB5b3UgY2FuIHNwbGl0IHRoZSBzZXJpZXMgaW50
byB0d28uCj4+Pj4+Pgo+Pj4+PiBCZWZvcmUgaW1wbGVtZW50IERQIGV4dGVuc2lvbiwgd2UgaGF2
ZSBkaXNjdXNzZWQgd2l0aCBhYmhpbmF2IGFuZCBrcmlzaG5hIGFib3V0IHdoZXRoZXIgdXNlIGNv
bWJvLCB1c2JjIG9yIHNlcGFyYXRlIHBoeS4KPj4+Pgo+Pj4+IFdoYXQgaXMgIkRQIGV4dGVuc2lv
biI/Cj4+Pj4KPj4gSSdtIHNvcnJ5IGNvbmZ1c2lvbiBjYXN1ZWQgYnkgbXkgZGVzY3JpcHRpb24u
IEl0J3MgbWVhbnMgZXh0ZW5kIERQIGltcGxlbW50IGZvciBVU0JDIHBoeSBkcml2ZXIuCj4+Pj4+
Cj4+Pj4+IFdlIGlkZW50aWZpZWQgdGhhdCBEUCBhbmQgVVNCIHNoYXJlIHNvbWUgY29tbW9uIGNv
bnRyb2xzIGZvciBwaHlfbW9kZSBhbmQgb3JpZW50YXRpb24uCj4+Pj4+IFNwZWNpZmljYWxseSwg
J1RDU1JfVVNCM18wX0RQX1BIWU1PREUnIGNvbnRyb2xzIHdobyBtdXN0IHVzZSB0aGUgbGFuZXMg
LSBVU0Igb3IgRFAsCj4+Pj4+IHdoaWxlIFBFUklQSF9TU19VU0IwX1VTQjNQSFlfUENTX01JU0Nf
VFlQRUNfQ1RSTCBjb250cm9scyB0aGUgb3JpZW50YXRpb24uCj4+Pj4+IEl0IHdvdWxkIGJlIG1v
cmUgZWZmaWNpZW50IGZvciBhIHNpbmdsZSBkcml2ZXIgdG8gbWFuYWdlIHRoZXNlIGNvbnRyb2xz
LiAKPj4+Pgo+Pj4+IFRoZSBxdWVzdGlvbiBpcyBhYm91dCB0aGUgaGFyZHdhcmUsIG5vdCBhYm91
dCB0aGUgZHJpdmVyLgo+Pj4+Cj4+Pj4+IEFkZGl0aW9uYWxseSwgdGhpcyBQSFkgZG9lcyBub3Qg
c3VwcG9ydCBBbHQgTW9kZSwgYW5kIHRoZSB0d28gY29udHJvbCByZWdpc3RlcnMgYXJlIGxvY2F0
ZWQgaW4gc2VwYXJhdGUgYWRkcmVzcyBzcGFjZXMuIAo+Pj4+PiBUaGVyZWZvcmUsIGV2ZW4gdGhv
dWdoIHRoZSBvcmllbnRhdGlvbiBmb3IgRFAgb24gdGhpcyBwbGF0Zm9ybSBpcyBhbHdheXMgbm9y
bWFsIGFuZCBjb25uZWN0ZWQgdG8gdGhlIHZpZGVvIG91dHB1dCBib2FyZCwgCj4+Pj4+IHdlIHN0
aWxsIGRlY2lkZWQgdG8gYmFzZSBpdCBvbiB0aGUgVVNCQyBleHRlbnNpb24uCj4+Pj4KPj4+PiBD
b3VsZCB5b3UgcGxlYXNlIGNsYXJpZnksIGRvIHVzYjMtb3ItZHAgUEhZcyBzdXBwb3J0IERQLW92
ZXItVVNCLUM/IEkKPj4+PiB0aG91Z2h0IHRoYXQgdXNiYy1vci1kcCBwbGF0Zm9ybXMgc3VwcG9y
dCB0aGF0LCBidXQgdGhleSBkb24ndAo+Pj4+IHN1cHBvcnQgRFArVVNCIHBpbiBjb25maWd1cmF0
aW9uLiBOb3RlLCB0aGUgcXVlc3Rpb24gaXMgYnJvYWRlciB0aGFuCj4+Pj4ganVzdCBRQ1M2MTUs
IGl0IGNvdmVycyB0aGUgUEhZIHR5cGUgaXRzZWxmLgo+Pj4+Cj4+Pj4gQWxzbywgaXMgVENTUiBj
b25maWd1cmF0aW9uIHJlYWQvd3JpdGUgb3IgcmVhZC1vbmx5PyBBcmUgd2Ugc3VwcG9zZWQgdG8K
Pj4+PiBzZXQgdGhlIHJlZ2lzdGVyIGZyb20gT1Mgb3IgYXJlIHdlIHN1cHBvc2VkIHRvIHJlYWQg
aXQgYW5kIHRodXMgZGV0ZW1pbmUKPj4+PiB0aGUgUEhZIG1vZGU/Cj4+Pgo+Pj4gQW55IHVwZGF0
ZXMgb24gdGhlc2UgdHdvIHRvcGljcz8KPj4+Cj4+IFN0aWxsIGNvbmZpcm1pbmcgZGV0YWlsIGlu
Zm8gd2l0aCBIVyAmIGRlc2lnbiB0ZWFtLgo+PiBJ4oCZbGwgdXBkYXRlIHRoZSBpbmZvcm1hdGlv
biB0aGF0IGhhcyBiZWVuIGNvbmZpcm1lZCBzbyBmYXIuCj4+IFRoaXMgcGh5IHN1cHBvcnQgRFAt
b3Zlci1VU0ItQyxidXQgaXQncyBub3Qgc3VwcG9ydCBhbHQtbW9kZSB3aGljaCAyIGxhbmUgd29y
ayBmb3IgRFAsIG90aGVyIDIgbGFuZSB3b3JrIGZvciBVU0IuCj4+IFRDU1IgcGh5IG1vZGUgaXMg
cmVhZC93cml0ZSByZWcgYW5kIHdlIGNhbiByZWFkIGZvciBkZXRlcm1pbmUgcGh5IG1vZGUuCj4g
Cj4gT2ssIHRoYW5rcyBmb3IgdGhlIGV4cGxhbmF0aW9uLiBGcm9tIG15IHBvaW50IG9mIHZpZXc6
Cj4gCj4gLSBJbXBsZW1lbnQgdGhlIERQIFBIWSB0byBiZSBhIHBhcnQgb2YgdGhlIHNhbWUgZHJp
dmVyLiBFYWNoIGRldmljZQo+ICAgc3VwcG9ydGVkIGJ5IHRoZSB1c2JjIGRyaXZlciBzaG91bGQg
Z2V0IGJvdGggUEhZcy4KPiAKPiAtIE1ha2Ugc3VyZSBub3QgdG8gYnJlYWsgdGhlIEFCSTogI3Bo
eS1jZWxscyA9IDwwPiBzaG91bGQgc3RpbGwgd29yayBhbmQKPiAgIHJldHVybiBVU0IgUEhZLCBr
ZWVwaW5nIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5LiBOZXdlciBkZXZpY2VzIG9yCj4gICB1cGdy
YWRlZCBEVCBmb3Igb2xkIGRldmljZXMgc2hvdWxkIHJldHVybiBVU0IgUEhZIGZvciA8Li4uIDA+
IGFuZCBEUAo+ICAgUEhZIGZvciA8Li4uIDE+Lgo+IApZZXMsIGN1cnJlbnRseSB3ZSBoYXZlIGlt
cGxlbWVudGVkIGxpa2UgeW91ciBkZXNjcmlwdGlvbiwKRWFjaCBkZWl2Y2Ugc2hvdWQgZ2V0IGJv
dGggUEhZcywgRFAgUEhZIGZvciA8Li4uIDE+IGFuZCBVU0IgUEhZIGZvciA8Li4uIDA+Lgo+IC0g
SSdtIG5vdCBzaHVyZSBob3cgdG8gaGFuZGxlIHRoZSBVU0IgYW5kIERQIGNvZXhpc3RlbmNlLCBl
c3BlY2lhbGx5IGluCj4gICB5b3VyIGNhc2Ugb2YgdGhlIFVTQi1vci1EUCBQSFkuCj4gCkZvciBj
b2V4aXN0ZW5jZSBwcm9jZXNzOgoKV2hlbiB3ZSBzdGFydCBpbXBsZW1lbnQgRFAgcGFydCwgdXNi
IGRyaXZlciB0ZWFtIHNhaWQgb25seSBuZWVkIGNvbmZpZyBUQ1NSIHBoeSBtb2RlIGFuZCBvcmll
bnRhdGlvbiBkdXJpbmcgc3dpdGNoIGluIFVTQi1DIHBvcnQuCkJhc2VkIG9uIHlvdXIgcHJldmlv
dXMgY29tbWVudHMgYXZvdXQgU1dfUFdSRE4sIEknbSBjb25maXJtaW5nIHdpdGggdGhlIFVTQiB0
ZWFtIHdoZXRoZXIgU1dfUkVTVC9TV1BXUkROL1NUQVJUX0NUUkwgcmVnaXN0ZXJzIG1pZ2h0IGFm
ZmVjdCBEUC4KCkFueXdheSwgZXZlbiB0aG91Z2ggdGhlIG9yaWdpbmFsIFNvQyBkZXNpZ24gc3Vw
cG9ydHMgRFAgb3IgVVNCIG92ZXIgVHlwZS1D77yMCmJ1dCBvbiBRQ1M2MTUgQURQIEFJUiBwbGF0
Zm9ybSwgdGhlcmUgYXJlIG9ubHkgZm91ciBVU0ItQSBwb3J0IHdoaWNoIHdvcmtzIHdpdGggJ3Fj
czYxNS1xbXAtdXNiMy1waHknIGRyaXZlciwgYW5kIG5vIFVTQi1DIHBvcnQuCkRQIHBvcnQgaXMg
bWFwcHBlZCBmcm9tIHVzYiBwaW4gdG8gdGhlIHZpZGVvIG91dCBzdWItYm9hcmQuCnNvIHdlIGFy
ZSB1bmFibGUgdG8gdmVyaWZ5IHRoZSBzd2l0Y2hpbmcgY2FzZSBiZXR3ZWVuIERQIGFuZCBVU0Ig
ZGV2aWNlcyB1bmRlciBVU0ItQy4KCkhvd2V2ZXIsIEknbSBhbHNvIGNvbmZpcm1pbmcgd2hldGhl
ciBhbnl0aGluZyBvdGhlciB3aWxsIGFmZmVjdCBVU0IgYW5kIERQIGVhY2ggb3RoZXIuCgoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
